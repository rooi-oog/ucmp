#ifndef __I2C_H
#define __I2C_H

#include <libopencm3/stm32/gpio.h>

void i2c_init (void);
void i2c_send_start_seq (void);
void i2c_send_stop_seq (void);
void i2c_write_byte (uint8_t byte);
void i2c_send_ack (void);
void i2c_send_nack (void);
uint8_t i2c_read_byte (unsigned char ack);
uint8_t i2c_wait_ack (void);
bool i2c_read_page(uint16_t reg, uint8_t *buf, uint16_t len);
bool i2c_write_page (uint16_t reg, uint8_t *buf, uint16_t len);

#endif /* __I2C_H */


