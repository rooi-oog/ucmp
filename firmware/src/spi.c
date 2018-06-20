#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/gpio.h>

#define DONT_CARE		0x00
/* These commands fits for standard serial SPI EEPROM */
#define SPI_CMD_WREN		0x06	// Write enable latch
#define SPI_CMD_WRITE	0x02	// Write data to eeprom
#define SPI_CMD_READ		0x03	// Read data from eeprom
#define SPI_CMD_RDSR		0x05	// Read status register

bool spi_write_byte (uint32_t address, uint8_t data) 
{
	(void) address;
	(void) data;
	
	return false;
}

bool spi_write_page (uint32_t address, uint8_t *data_ptr, uint32_t data_length) 
{
	spi_send (SPI2, SPI_CMD_WREN);
	spi_send (SPI2, SPI_CMD_WRITE);
	spi_send (SPI2, 0);
	spi_send (SPI2, 0);
	spi_send (SPI2, 0);
	
	while (data_length-- > 0)
		spi_send (SPI2, *data_ptr++);
	
	return true;
}

bool spi_read_byte (uint32_t address, uint8_t *byte_ptr) 
{
	(void) address;
	(void) byte_ptr;
	
	return false;
}

bool spi_read_page (uint32_t address, uint8_t *byte_ptr, uint32_t data_length)
{
	gpio_clear (GPIOB, GPIO12);
	spi_send (SPI2, SPI_CMD_READ);
	spi_send (SPI2, 0);
	spi_send (SPI2, 0);
	spi_send (SPI2, 0);
/*	spi_send (SPI2, (address >> 16) & 0xFF);*/
/*	spi_send (SPI2, (address >> 8) & 0xFF);*/
/*	spi_send (SPI2, address & 0xFF);*/
	
	while (data_length-- > 0)
		*byte_ptr++ = (uint8_t) spi_xfer (SPI2, DONT_CARE);
	
	gpio_set (GPIOB, GPIO12);
	
	return true;
}

