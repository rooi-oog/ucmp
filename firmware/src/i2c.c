#include <config.h>
#include <i2c.h>

/* EEPROM address */
#define EEPROM_ADDRESS	3

/* Address byte to send */
#define ADDRESS_BYTE	((uint8_t)(0x50 | EEPROM_ADDRESS))


#define i2c_scl_high	gpio_set (I2C_GPIO_PORT, I2C_SCL_PIN);
#define i2c_scl_low		gpio_clear (I2C_GPIO_PORT, I2C_SCL_PIN);
#define i2c_sda_high	gpio_set (I2C_GPIO_PORT, I2C_SDA_PIN)
#define i2c_sda_low		gpio_clear (I2C_GPIO_PORT, I2C_SDA_PIN)
#define i2c_sda_in		(gpio_get (I2C_GPIO_PORT, I2C_SDA_PIN) >> 1)

#define i2c_sda_set_out_mode	gpio_mode_setup (I2C_GPIO_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, I2C_SDA_PIN); \
								gpio_set_output_options (I2C_GPIO_PORT, GPIO_OTYPE_OD, GPIO_OSPEED_2MHZ, I2C_SDA_PIN)
								
#define i2c_sda_set_in_mode		gpio_mode_setup (I2C_GPIO_PORT, GPIO_MODE_INPUT, GPIO_PUPD_NONE, I2C_SDA_PIN)


void i2c_init (void)
{
	gpio_mode_setup (I2C_GPIO_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, I2C_SDA_PIN | I2C_SCL_PIN);
	gpio_set_output_options (I2C_GPIO_PORT, GPIO_OTYPE_OD, GPIO_OSPEED_2MHZ, I2C_SDA_PIN | I2C_SCL_PIN);

    i2c_scl_high;
    i2c_sda_high;
}

void i2c_send_start_seq (void)
{	
	i2c_sda_set_out_mode;
    i2c_scl_high;
    i2c_sda_high;
	delay_us(4);
 	i2c_sda_low;
	delay_us(4);
	i2c_scl_low;
}

void i2c_send_stop_seq (void)
{
	i2c_sda_set_out_mode;
	i2c_scl_low;
	i2c_sda_low;
 	delay_us (4);
    i2c_scl_high;
    i2c_sda_high;
	delay_us (4);
}

uint8_t i2c_wait_ack (void)
{
	uint8_t ucErrCount = 0;

	i2c_sda_set_in_mode;
	i2c_sda_high;
    delay_us(1);
	i2c_scl_high;
    delay_us(1);
	while (i2c_sda_in) {
		ucErrCount++;
		if(ucErrCount > 250) {
			i2c_send_stop_seq ();

			return 1;
		}
	}

	i2c_scl_low;

    return 0;
}

void i2c_send_ack (void)
{
	i2c_scl_low;
	i2c_sda_set_out_mode;
	i2c_sda_low;
	delay_us(2);
	i2c_scl_high;
	delay_us(2);
	i2c_scl_low;
}

void i2c_send_nack (void)
{
	i2c_scl_low;
	i2c_sda_set_out_mode;
	i2c_sda_high;
	delay_us(2);
	i2c_scl_high;
	delay_us(2);
	i2c_scl_low;
}

void i2c_write_byte (uint8_t byte)
{
	i2c_sda_set_out_mode;
    i2c_scl_low;

    for(int i = 0;i < 8;i++) {
        (byte & (0x80 >> i)) ? i2c_sda_high : i2c_sda_low;
		delay_us(2);
		i2c_scl_high;
		delay_us(2);
		i2c_scl_low;
		delay_us(2);
    }
}

uint8_t i2c_read_byte (unsigned char ack)
{
	uint8_t byte = 0;

	i2c_sda_set_in_mode;

    for (int i = 0; i < 8; i++) {
        i2c_scl_low;
        delay_us (2);
        i2c_scl_high;
        byte <<= 1;                 /* byte <<= 1 not byte <<= i */
        if (i2c_sda_in)
            byte++;
		delay_us (1);
    }

    if (!ack)
        i2c_send_nack ();
    else
        i2c_send_ack ();

    return byte;
}

bool i2c_write_page (uint16_t reg, uint8_t *buf, uint16_t len)
{
    i2c_send_start_seq ();
	i2c_write_byte ((ADDRESS_BYTE << 1) | 0);
    if (i2c_wait_ack ()) {
        i2c_send_stop_seq ();        
        return false;
	}	
	
    i2c_write_byte (reg);
    i2c_wait_ack ();
    
	for (int i = 0; i < len; i++) {
		i2c_write_byte (buf[i]);
        if (i2c_wait_ack ()) {
			i2c_send_stop_seq ();
			
			return false;
		}
	}

    i2c_send_stop_seq ();

	return true;
}

bool i2c_read_page(uint16_t reg, uint8_t *buf, uint16_t len)
{
 	i2c_send_start_seq ();
	i2c_write_byte (ADDRESS_BYTE << 1 | 0);
	if (i2c_wait_ack ()) {
		i2c_send_stop_seq ();
		return false;
	}
    i2c_write_byte (reg);
    i2c_wait_ack ();
    i2c_send_start_seq ();
	i2c_write_byte (ADDRESS_BYTE << 1 | 1);
    i2c_wait_ack ();
	while (len) {
		if(len == 1)
            *buf = i2c_read_byte (0);
		else
            *buf = i2c_read_byte (1);

		len--;
		buf++;
	}

    i2c_send_stop_seq ();

	return true;

}
