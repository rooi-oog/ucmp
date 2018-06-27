#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>

#include "device.h"

static int cdcacm_open (char *port) 
{
	int ttyfd;
	struct termios options;

	if ((ttyfd = open (port, O_RDWR | O_NOCTTY | O_NONBLOCK)) < 0)
	{
		char err [64]; sprintf (err, "Unable to open port %s", port);
		perror (err);
		exit (EXIT_FAILURE);
	}

	tcgetattr (ttyfd, &options);

	// set baud rate
	cfsetispeed (&options, TTY_SPEED);
	cfsetospeed (&options, TTY_SPEED);

	options.c_cflag |= CLOCAL | CREAD;						// enable the receiver and set local mode
	options.c_cflag &= ~CSIZE;								// mask the character size bits
	options.c_cflag |= CS8;									// select 8 data bits
	options.c_cflag &= ~PARENB;								// disable the parity check
	options.c_cflag &= ~CSTOPB;								// 1 stop bit
	options.c_cflag &= ~CRTSCTS;								// disable hardware flow control
	options.c_iflag &= ~(IXON | IXOFF | IXANY | 
		IGNBRK | INLCR | ICRNL);							// disable software flow control
	options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);		// select raw input
	options.c_oflag &= ~OPOST;								// select raw output

	// set the new options for the port
	tcsetattr (ttyfd, TCSAFLUSH, &options);
	
	return ttyfd;
}

static void cdcacm_close (int ttyfd)
{
	close (ttyfd);
}

static int read_nonblock (int fd, char *buf, size_t count, size_t time_wait_ms)
{
	int n, watchdog = 0;
	while ((n = read (fd, buf, count)) <= 0 && watchdog < time_wait_ms * 10) {
		usleep (100);
		watchdog++;
	}
	
	return n;
}

static int check_response (char *resp)
{
	return strcmp (resp, "ACK") == 0;
}

static void check_for_error (int fd)
{
	char resp [4];

	if (read_nonblock (fd, resp, 4, 10000) <= 0) {
		fprintf (stderr, "No response from device\n");
		exit (EXIT_FAILURE);
	}
	
	if (!check_response (resp)) {
		fprintf (stderr, "%s: MCU didn't accept command\n", resp);
		exit (EXIT_FAILURE);
	}
}

static void property_set (char *port, char cmd, uint8_t value)
{
	char data [64];
	int ttyfd = cdcacm_open (port);
	
	sprintf (data, "%c %d\0", cmd, value);
	write (ttyfd, data, 64);
	check_for_error (ttyfd);
	
	cdcacm_close (ttyfd);
}

static uint8_t property_get (char *port, char cmd)
{
	int ttyfd = cdcacm_open (port);
	
	write (ttyfd, &cmd, 1);
	check_for_error (ttyfd);
	
	uint8_t n, value;
	if ((n = read_nonblock (ttyfd, &value, 1, 1000)) <= 0) {
		fprintf (stderr, "No response from device\n");
		exit (EXIT_FAILURE);
	}
	
	cdcacm_close (ttyfd);
	
	return value;
}

char *read_from_device (char *port, device_t *dev)
{
	char data [64];
	int ttyfd = cdcacm_open (port);
	
	/* Send DEVICE cmd to MCU */
	write (ttyfd, (char *) dev, sizeof (device_t));
	check_for_error (ttyfd);
	
	/* Send READ cmd to MCU */
	write (ttyfd, "r", 1);
	check_for_error (ttyfd);
	
	int n, len = 0;
	char *buf = malloc (dev->size);
	
	/* Read eeprom content */
	while (len < dev->size) {
		if ((n = read_nonblock (ttyfd, &buf [len], dev->size, 1000)) <= 0) {
			fprintf (stderr, "No response from device\n");
			exit (EXIT_FAILURE);
		}
		len += n;
	}
	
	cdcacm_close (ttyfd);
	
	return buf;
}

void write_to_device (char *port, device_t *dev, char *buf)
{	
	char data [64];
	int ttyfd = cdcacm_open (port);
	
	/* Send DEVICE cmd to MCU */
	write (ttyfd, (char *) dev, sizeof (device_t));
	check_for_error (ttyfd);

	/* Send READ cmd to MCU */
	write (ttyfd, "w", 1);
	
	/* Write buf content to eeprom */
	write (ttyfd, buf, dev->size);
	/* Mandatory delay according to tWR */
	if (strcmp (dev->type, "I2C") == 0)
		usleep (15 * (dev->size / dev->page) * 1000);
		
	check_for_error (ttyfd);
	
	cdcacm_close (ttyfd);
}

void pwm1_set_duty (char *port, uint8_t duty) {
	property_set (port, 'p', duty);
}

void pwm2_set_duty (char *port, uint8_t duty) {
	property_set (port, 'P', duty);
}

void gpio_mode_set (char *port, uint8_t mode) {
	property_set (port, 'm', mode);
}

void gpio_set_value (char *port, uint8_t value) {
	property_set (port, 'G', value);
}

uint8_t gpio_get_value (char *port) {
	return property_get (port, 'g');
}

uint8_t analog_in (char *port) {
	return property_get (port, 'a');
}

void ucmp_init (struct ucmp *u)
{
	bzero (u, sizeof (struct ucmp));
	
	/* Serial programmer */
	u->prg.read = read_from_device;
	u->prg.write = write_to_device;
	
	/* PWM control */
	u->pwm1.get = NULL;
	u->pwm1.set = pwm1_set_duty;	
	/* PWM control */
	u->pwm2.get = NULL;
	u->pwm2.set = pwm2_set_duty;
	
	/* Set GPIO mode */
	u->mode.get = NULL;
	u->mode.set = gpio_mode_set;
	
	/* GPIO access */
	u->gpio.get = gpio_get_value;
	u->gpio.set = gpio_set_value;
	
	/* Analog in */
	u->analog.get = analog_in;
	u->analog.set = NULL;
}

