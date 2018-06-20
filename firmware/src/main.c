#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/i2c.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/stm32/iwdg.h>

#include "cmsis_dap/DAP_config.h"
#include "cmsis_dap/DAP.h"
#include "usb/usb_rw.h"
#include "uart/uart.h"
#include "main.h"

extern usbd_device *usbd_dev;

void sys_tick_handler () {
	time++;
}

void delay_ms (uint32_t delay) {
	register uint32_t time_cur = time;
	while ((time - time_cur) < delay);
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
	
	bool (*read_page) (uint32_t, uint8_t *, uint32_t) = 
		strcmp (dev->type, "SPI") == 0 ? spi_read_page : i2c_read_page;
	
	if (read_page (0, buf, dev->size)) {
		response (true);
		write (STDOUT, buf, dev->size);
	} else
		response (false);
		
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
		for (uint16_t i = 0; i < dev->size; i += dev->page) {
			if (!(ret = i2c_write_page (i, &buf [i], dev->page)))
				break;
			
			/* Prevent IDWG trigger while writing large size eeprom */
			iwdg_reset ();
			
			/* Mandatory delay between write cycles */
			delay_ms (10);
		}
	} else 
		ret = spi_write_page (0, buf, dev->size);

	response (ret);
	free (buf);	
}


static void pwm_set (uint8_t pwmno, int duty)
{	
	*pwm [pwmno].pos = duty > 0 ?  duty : 0;
	*pwm [pwmno].neg = duty < 0 ? -duty : 0;
	
	response (true);
}

static void gpio_write_pins (uint8_t value)
{	
	gpio_port_write (GPIOA, value);	
	response (true);
}

static void gpio_read_pins (void)
{	
	response (true);
	
	uint8_t val = gpio_port_read (GPIOA);
	write (1, &val, 1);
	
}

static void gpio_mode_set (uint8_t bitmask)
{	
	for (int i = 0; i < 8; i++) {
		if (bitmask & (1 << i)) {
			gpio_set_mode (GPIOA, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_PUSHPULL, (1 << i));
		} else {
			gpio_set_mode (GPIOA, GPIO_MODE_INPUT, GPIO_CNF_INPUT_FLOAT, (1 << i));
		}
	}
	
	gpio_write_pins (0);
}

static void analog_get (void)
{
	response (false);
}

static void usb_command_handler (void)
{
	char buf [64];
	
	iwdg_reset ();		
	
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
		case 'p':
			pwm_set (0, atoi (&buf [2]));
			break;
		case 'P':
			pwm_set (1, atoi (&buf [2]));
			break;
		case 'a':
			analog_get ();
			break;
		case 'm':
			gpio_mode_set (atoi (&buf [2]));
			break;
		case 'g':			
			gpio_read_pins ();
			break;
		case 'G':
			gpio_write_pins (atoi (&buf [2]));
			break;
		default:
			gpio_toggle (GPIOC, GPIO13);
		}
	}

	/* CMSIS DAP section */
	static char req  [DAP_PACKET_SIZE];
	static char resp [DAP_PACKET_SIZE];
	
	/* When packet received from the Host */
	if (usbrw_read_nonblock (dap) >= DAP_PACKET_SIZE)
	{
		/* Pick request from the usb Host */
		usbrw_read (dap, req, DAP_PACKET_SIZE);
		
		/* Handle the request */
		DAP_ProcessCommand ((uint8_t *) req, (uint8_t *) resp);		
		
		/* Send response to the Host */
		usbrw_write (dap, resp, DAP_PACKET_SIZE);
	}
}

static void usb_to_uart (void)
{	
	char c;
	
	iwdg_reset ();	
	if (read (STDIN, &c, 1) > 0) {		
		uart_write (c);		
	}
		
	if (uart_read_nonblock ()) {				
		c = uart_read ();
		write (STDOUT, &c, 1);
	}

}

void main (void)
{
	device = (device_t *) malloc (sizeof (device_t));
	
	clock_setup ();
	gpio_setup ();
	usb_setup ();
	uart_setup ();
	i2c_setup ();
	spi_setup ();
	pwm_setup ();
	systick_setup ();
	/* Configure JTAG pins according to CMSIS-DAP Hardware pins support table
	 * described in DAP_config.h */ 
	DAP_SETUP ();
	
	// Mandatory delay (unsure about mandatory :)
	delay_ms (100);
	
	/* Starting IWDG by default 512ms period */
	iwdg_start ();
	
	/* Check if USB<->UART mode or not */
	void (*handler) (void) = (gpio_get (GPIOB, GPIO0) == 0) ? usb_to_uart : usb_command_handler;
	
	while (1) {
		handler ();
	}
}
