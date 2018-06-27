#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/iwdg.h>

extern void delay_ms (uint32_t);

#define DONT_CARE		0x00

/* These commands fits for standard serial SPI EEPROM */
#define SPI_CMD_WREN		0x06	// Write enable latch
#define SPI_CMD_WRITE	0x02	// Write data to eeprom
#define SPI_CMD_READ		0x03	// Read data from eeprom
#define SPI_CMD_RDSR		0x05	// Read status register
#define SPI_CMD_CE		0xC7	// Chip Erase

/* Work in progress bit in status register */
#define SPI_SR_WIP		0x01

bool spi_write_byte (uint32_t address, uint8_t data) 
{
	(void) address;
	(void) data;
	
	return false;
}

bool spi_write_page (uint32_t address, uint8_t *data_ptr, uint32_t data_length) 
{
	uint8_t status = 0xFF;
	uint8_t watchdog = 0;

	/* Set WREN latch */
	gpio_clear (GPIOB, GPIO12);
	(void) spi_xfer (SPI2, SPI_CMD_WREN);
	gpio_set (GPIOB, GPIO12);

	delay_ms (1);
	
	/* Erase whole chip */
	gpio_clear (GPIOB, GPIO12);
	(void) spi_xfer (SPI2, SPI_CMD_CE);
	gpio_set (GPIOB, GPIO12);	
	
	/* Check erase done */
	while (status & SPI_SR_WIP) {		
		delay_ms (1000);
		gpio_clear (GPIOB, GPIO12);
		(void) spi_xfer (SPI2, SPI_CMD_RDSR);
		status = (uint8_t) spi_xfer (SPI2, DONT_CARE);			
		gpio_set (GPIOB, GPIO12);
		
		iwdg_reset ();
		if (watchdog++ > 15)
			return false;
	}
	
	/* Set WREN latch */
	gpio_clear (GPIOB, GPIO12);
	(void) spi_xfer (SPI2, SPI_CMD_WREN);
	gpio_set (GPIOB, GPIO12);
	
	delay_ms (1);
	
	/* Write data */
	gpio_clear (GPIOB, GPIO12);	
	(void) spi_xfer (SPI2, SPI_CMD_WRITE);
	(void) spi_xfer (SPI2, address >> 16);
	(void) spi_xfer (SPI2, address >> 8);
	(void) spi_xfer (SPI2, address & 0xFF);
	
	while (data_length-- > 0)
		(void) spi_xfer (SPI2, *data_ptr++);

	gpio_set (GPIOB, GPIO12);	
	
	return true;
}

bool spi_read_byte (uint32_t address, uint8_t *byte_ptr) 
{
	gpio_clear (GPIOB, GPIO12);
	
	(void) spi_xfer (SPI2, SPI_CMD_READ);
	(void) spi_xfer (SPI2, address >> 16);
	(void) spi_xfer (SPI2, address >> 8);
	(void) spi_xfer (SPI2, address & 0xFF);
	
	*byte_ptr = (uint8_t) spi_xfer (SPI2, DONT_CARE);
	
	gpio_set (GPIOB, GPIO12);
	
	return true;
}

bool spi_read_page (uint32_t address, uint8_t *byte_ptr, uint32_t data_length)
{
	gpio_clear (GPIOB, GPIO12);
	
	(void) spi_xfer (SPI2, SPI_CMD_READ);
	(void) spi_xfer (SPI2, address >> 16);
	(void) spi_xfer (SPI2, address >> 8);
	(void) spi_xfer (SPI2, address & 0xFF);
	
	while (data_length-- > 0)
		*byte_ptr++ = (uint8_t) spi_xfer (SPI2, DONT_CARE);
	
	gpio_set (GPIOB, GPIO12);
	
	return true;
}

