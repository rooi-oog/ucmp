#include <stdio.h>
#include <errno.h>
#include <libopencm3/stm32/usart.h>
#include <libopencm3/usb/usbd.h>
#include <libopencm3/usb/cdc.h>
#include "uart.h"

static char rx_buf [UART_RINGBUFFER_SIZE_RX];
static volatile unsigned int rx_produce;
static volatile unsigned int rx_consume;

static char tx_buf [UART_RINGBUFFER_SIZE_TX];
static unsigned int tx_produce;
static unsigned int tx_consume;
static volatile int tx_cts;

void usbuart_set_line_coding (struct usb_cdc_line_coding *coding)
{	
	usart_set_baudrate (USART1, coding->dwDTERate);

	if (coding->bParityType)
		usart_set_databits (USART1, coding->bDataBits + 1);
	else
		usart_set_databits (USART1, coding->bDataBits);

	switch (coding->bCharFormat) {
	case 0:
		usart_set_stopbits (USART1, USART_STOPBITS_1);
		break;
	case 1:
		usart_set_stopbits (USART1, USART_STOPBITS_1_5);
		break;
	case 2:
		usart_set_stopbits (USART1, USART_STOPBITS_2);
		break;
	}

	switch (coding->bParityType) {
	case 0:
		usart_set_parity (USART1, USART_PARITY_NONE);
		break;
	case 1:
		usart_set_parity (USART1, USART_PARITY_ODD);
		break;
	case 2:
		usart_set_parity (USART1, USART_PARITY_EVEN);
		break;
	}
}

void usart1_isr (void)
{	
	if (USART_SR (USART1) & USART_SR_RXNE) {						
		rx_buf [rx_produce] = (uint8_t) USART_DR (USART1);               // Receive byte from UART
		rx_produce = (rx_produce + 1) & UART_RINGBUFFER_MASK_RX;
	}	

	if (USART_SR (USART1) & USART_SR_TC) {                                     // Check interrupt source
		USART_SR (USART1) &= ~USART_SR_TC;                                     // Clear pending bit
		if (tx_produce != tx_consume) {
			USART_DR (USART1) = (uint8_t) tx_buf [tx_consume];                 // Send byte through UART
			tx_consume = (tx_consume + 1) & UART_RINGBUFFER_MASK_TX;
		} else
			tx_cts = 1;
	}
	
}

/* Do not use in interrupt handlers! */
char uart_read (void)
{
	char c;

	while (rx_consume == rx_produce);
	c = rx_buf [rx_consume];
	rx_consume = (rx_consume + 1) & UART_RINGBUFFER_MASK_RX;
	return c;
}

int uart_read_nonblock (void)
{
	return (rx_consume != rx_produce);
}

void uart_write (char c)
{
	if (tx_cts) {		
		tx_cts = 0;
		USART_DR (USART1) = (uint8_t) c;
	}
	else {		
		tx_buf [tx_produce] = c;
		tx_produce = (tx_produce + 1) & UART_RINGBUFFER_MASK_TX;
	}
}

void uart_print (char *msg)
{
	while (*msg != 0) uart_write (*msg++);
}
