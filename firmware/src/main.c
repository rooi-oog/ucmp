#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <libopencm3/stm32/gpio.h>

#include "config.h"
#include "stm32_usb/usb_rw.h"
#include "main.h"

extern usbd_device *usbd_dev;

void delay_us (uint32_t delay) {	
	register uint32_t cnt = 7 * delay;	// number 7 was calculated experimentally
	while (cnt-- > 0)
		asm ("");
}

void delay_ms (uint32_t delay) {
	delay_us (delay * 1000);
	LED_TOGGLE;
}

static void response (bool result) {
	write (STDOUT, result ? "ACK\0" : "NAK\0", 4);
}

static void select_device (char *buf)
{
	memcpy ((char *) device, buf, sizeof (device_t));
	response (true);
	
}

static void read_from_device (device_t *dev)
{
	uint8_t *buf = malloc (dev->size);
	
	if (i2c_read_page (0, buf, dev->size)) {		
		response (true);
		write (STDOUT, buf, dev->size);
	} else {		
		response (false);		
	}
		
	free (buf);
}

static void write_to_device (device_t *dev)
{	
	uint8_t *buf = malloc (dev->size);
	uint16_t len = 0;
	bool ret = false;	
	
	while ((len += read (STDIN, &buf [len], dev->size)) != dev->size);
	
	if (strcmp (dev->type, "I2C") == 0) {
		/* Write goes by decided page length. */
		for (uint32_t i = 0; i < dev->size; i += dev->page) {
			if (!(ret = i2c_write_page (i, &buf [i], dev->page)))
				break;
			
			/* Mandatory delay between write cycles */
			delay_ms (10);
		}
	} else 
		ret = 0;

	response (ret);
	free (buf);	
	
	LED_ON;
}

static void usb_command_handler (void)
{	
	char buf [64];
	
	/* Swiss-knife section */
	if (read (STDIN, buf, 64) > 0)
	{					
		switch (buf [0])
		{
		case 'd':						
			select_device (buf);
			break;
		case 'r':			
			read_from_device (device);
			break;
		case 'w':			
			write_to_device (device);
			break;
		default:
			LED_TOGGLE;
		}
	}
}

void main (void)
{	
	device = (device_t *) malloc (sizeof (device_t));
	
	clock_setup ();
	gpio_setup ();
	usb_setup ();
	i2c_setup ();
	
	LED_ON;

	while (1)
		usb_command_handler ();
}
