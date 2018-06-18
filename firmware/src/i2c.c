/*
* The MIT License (MIT)
*
* Copyright (c) 2015 Marco Russi
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

#include <stdint.h>
#include <libopencm3/stm32/i2c.h>

/* EEPROM address */
#define EEPROM_ADDRESS				0

/* Address byte to send */
#define ADDRESS_BYTE	((uint8_t)(0x50 | EEPROM_ADDRESS))

/* Function to write a byte at a specific address */
bool i2c_write_byte(uint16_t address, uint8_t data)
{
	bool success = true;

	/* send START and wait for completion */
	i2c_send_start(I2C2);
	while ((I2C_SR1(I2C2) & I2C_SR1_SB) == 0);

	/* send device address, r/w request and wait for completion */
	i2c_send_7bit_address(I2C2, ADDRESS_BYTE, I2C_WRITE);
	while ((I2C_SR1(I2C2) & I2C_SR1_ADDR) == 0);

	/* check SR2 and go on if OK */
	if ((I2C_SR2(I2C2) & I2C_SR2_MSL)		/* master mode */
	&&	(I2C_SR2(I2C2) & I2C_SR2_BUSY)) {	/* communication ongoing  */

		/* send memory address MSB 
		 * TODO: Have to realize address size 
		i2c_send_data(I2C2, ((uint8_t)(address >> 8)));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0); */

		/* send memory address LSB */
		i2c_send_data(I2C2, ((uint8_t)address));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0);

		/* send data byte */
		i2c_send_data(I2C2, data);
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0);

		/* send stop */
		i2c_send_stop(I2C2);

		/* ATTENTION: consider to wait for a while */
	} else {
		/* error */
		success = false;
	}

	return success;
}


/* Function to write a page starting from a specific address */
bool i2c_write_page(uint16_t address, uint8_t *data_ptr, uint16_t data_length)
{
	bool success = true;

	/* send START and wait for completion */
	i2c_send_start(I2C2);
	while ((I2C_SR1(I2C2) & I2C_SR1_SB) == 0);

	/* send device address, r/w request and wait for completion */
	i2c_send_7bit_address(I2C2, ADDRESS_BYTE, I2C_WRITE);
	while ((I2C_SR1(I2C2) & I2C_SR1_ADDR) == 0);

	/* check SR2 and go on if OK */
	if ((I2C_SR2(I2C2) & I2C_SR2_MSL)		/* master mode */
	&&	(I2C_SR2(I2C2) & I2C_SR2_BUSY)) {	/* communication ongoing  */

		/* send memory address MSB
		 * TODO: Have to realize address width 
		i2c_send_data(I2C2, ((uint8_t)(address >> 8)));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0); */

		/* send memory address LSB */		 
		i2c_send_data(I2C2, ((uint8_t)address));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0); 

		/* write all bytes */
		while (data_length > 0) {
			/* send next data byte */
			i2c_send_data(I2C2, *data_ptr);
			/* increment data buffer pointer and
			 * decrement data buffer length */
			data_ptr++;
			data_length--;
			while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0);
		}
		/* send stop */
		i2c_send_stop(I2C2);

		/* ATTENTION: consider to wait for a while */
	} else {
		/* error */
		success = false;
	}

	return success;
}


/* Function to write a byte at a specific address */
bool i2c_read_byte(uint16_t address, uint8_t *byte_ptr)
{
	bool success = true;

	/* send START and wait for completion */
	i2c_send_start(I2C2);
	while ((I2C_SR1(I2C2) & I2C_SR1_SB) == 0);

	/* send device address, write request and wait for completion */
	i2c_send_7bit_address(I2C2, ADDRESS_BYTE, I2C_WRITE);
	while ((I2C_SR1(I2C2) & I2C_SR1_ADDR) == 0);

	/* check SR2 and go on if OK */
	if ((I2C_SR2(I2C2) & I2C_SR2_MSL)		/* master mode */
	&&	(I2C_SR2(I2C2) & I2C_SR2_BUSY)) {	/* communication ongoing  */

		/* send memory address MSB 
		 * TODO: Have to realize address size 
		i2c_send_data(I2C2, ((uint8_t)(address >> 8)));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0); */

		/* send memory address LSB */
		i2c_send_data(I2C2, ((uint8_t)address));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0);

		/* send START and wait for completion */
		i2c_send_start(I2C2);
		while ((I2C_SR1(I2C2) & I2C_SR1_SB) == 0);

		/* send device address, read request and wait for completion */
		i2c_send_7bit_address(I2C2, ADDRESS_BYTE, I2C_READ);
		while ((I2C_SR1(I2C2) & I2C_SR1_ADDR) == 0);

		/* if communication ongoing  */
		if (I2C_SR2(I2C2) & I2C_SR2_BUSY) {
			/* read received byte */
			while ((I2C_SR1(I2C2) & I2C_SR1_RxNE) == 0);
			*byte_ptr = i2c_get_data(I2C2);
			/* send stop */
			i2c_send_stop(I2C2);
		} else {
			/* error */
			success = false;
		}
	} else {
		/* error */
		success = false;
	}

	return success;
}


/* Function to read a page starting from a specific address */
bool i2c_read_page(uint16_t address, uint8_t *byte_ptr, uint16_t data_length)
{
	bool success = true;

	/* send START and wait for completion */
	i2c_send_start(I2C2);
	while ((I2C_SR1(I2C2) & I2C_SR1_SB) == 0);

	/* send device address, write request and wait for completion */
	i2c_send_7bit_address(I2C2, ADDRESS_BYTE, I2C_WRITE);
	while ((I2C_SR1(I2C2) & I2C_SR1_ADDR) == 0);

	/* check SR2 and go on if OK */
	if ((I2C_SR2(I2C2) & I2C_SR2_MSL)		/* master mode */
	&&	(I2C_SR2(I2C2) & I2C_SR2_BUSY)) {	/* communication ongoing  */

		/* send memory address MSB 
		 * TODO: Have to realize address size 
		i2c_send_data(I2C2, ((uint8_t)(address >> 8)));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0); */
		
		/* send memory address LSB */		
		i2c_send_data(I2C2, ((uint8_t)address));
		while ((I2C_SR1(I2C2) & I2C_SR1_TxE) == 0); 

		/* send START and wait for completion */
		i2c_send_start(I2C2);
		while ((I2C_SR1(I2C2) & I2C_SR1_SB) == 0);

		/* send device address, read request and wait for completion */
		i2c_send_7bit_address(I2C2, ADDRESS_BYTE, I2C_READ);
		while ((I2C_SR1(I2C2) & I2C_SR1_ADDR) == 0);

		/* if communication ongoing  */
		if (I2C_SR2(I2C2) & I2C_SR2_BUSY) {
			/* enable ACK */
			i2c_enable_ack(I2C2);
			/* read all bytes */
			while (data_length > 0) {
				/* read received byte */
				while ((I2C_SR1(I2C2) & I2C_SR1_RxNE) == 0);
				*byte_ptr = i2c_get_data(I2C2);
				/* increment data buffer pointer and
				 * decrement data buffer length */
				byte_ptr++;
				data_length--;
				/* if last byte is remaining */
				if (data_length == 1) {
					/* disable ACK */
					i2c_disable_ack(I2C2);
				}
			}
			/* send stop */
			i2c_send_stop(I2C2);
		} else {
			/* error */
			success = false;
		}
	} else {
		/* error */
		success = false;
	}

	return success;
}
