#ifndef SRC_DEVICES_H_
#define SRC_DEVICES_H_

#include <stdint.h>

#define TTY_SPEED	B4000000

typedef struct
{
	char cmd;
	uint32_t size;
	uint8_t page;
	char title [32];
	char type [4];

} device_t;

typedef struct
{
	uint8_t (*get) (char *);
	void  (*set) (char *, uint8_t);
} property_t;

typedef struct
{
	device_t *dev;
	char *(*read)  (char *, device_t *);
	void  (*write) (char *, device_t *, char *);
} prog_t;


struct ucmp
{	
	prog_t prg;
	property_t pwm1;
	property_t pwm2;
	property_t mode;
	property_t gpio;
	property_t analog;
};

void ucmp_init (struct ucmp *);

#endif /* SRC_DEVICES_H_ */
