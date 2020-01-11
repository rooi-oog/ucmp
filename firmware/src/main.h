#ifndef MAIN_HEADER_H
#define MAIN_HEADER_H

#define STDIN	0
#define STDOUT	1
#define STDERR	2


typedef struct
{	
	char cmd;
	uint32_t size;
	uint8_t page;
	char title [32];
	char type [4];
	
} device_t;

struct pwm 
{
	uint32_t *pos;
	uint32_t *neg;
};

device_t *device;
volatile uint32_t time = 0;


extern void clock_setup (void);
extern void timer_setup (void);
extern void pwm_setup (void);
extern void gpio_setup (void);
extern void usb_setup (void);
extern void uart_setup (void);
extern void systick_setup (void);
extern void i2c_setup (void);
extern void spi_setup (void);

extern bool i2c_read_page (uint16_t, uint8_t *, uint16_t);
extern bool i2c_write_byte(uint16_t, uint8_t);
extern bool i2c_write_page(uint16_t, uint8_t *, uint16_t);
extern bool i2c_read_byte(uint16_t, uint8_t *);

extern bool spi_read_page (uint32_t, uint8_t *, uint32_t);
extern bool spi_write_byte(uint32_t, uint8_t);
extern bool spi_write_page(uint32_t, uint8_t *, uint32_t);
extern bool spi_read_byte(uint32_t, uint8_t *);

extern usbrw_t *dap;
extern int usbrw_read_nonblock (usbrw_t *);
extern int usbrw_read (usbrw_t *, char *, int);
extern void usbrw_write (usbrw_t *, char *, int);

#endif /* MAIN_HEADER_H */

