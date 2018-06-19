#include <libopencm3/stm32/spi.h>

/* These commands fits for standard serial SPI EEPROM */
#define CMD_WREN		0x06	// Write enable latch
#define CMD_WRITE	0x02	// Write data to eeprom
#define CMD_READ		0x03	// Read data from eeprom
#define CMD_RDSR		0x05	// Read status register

bool spi_write_byte (uint32_t address, uint8_t data) 
{
	(void) address;
	(void) data;
}

bool spi_write_page (uint32_t address, uint8_t *data_ptr, uint16_t data_length) 
{
	(void) address;
	(void) data_ptr;
}

bool spi_read_byte (uint32_t address, uint8_t *byte_ptr) 
{
	(void) address;
	(void) byte_ptr
}

bool spi_read_page (uint32_t address, uint8_t *byte_ptr, uint16_t data_length)
{
	
}

