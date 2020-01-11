#ifndef CONFIG_H
#define CONFIG_H

#include <stdint.h>

#define	USB_COMM

#define	I2C_GPIO_PORT		GPIOA
#define	I2C_SCL_PIN			GPIO0
#define	I2C_SDA_PIN			GPIO1

#define LED_PIN_PORT		GPIOB
#define LED_PIN				GPIO1
#define LED_TOGGLE			gpio_toggle (LED_PIN_PORT, LED_PIN)
#define LED_ON				gpio_clear (LED_PIN_PORT, LED_PIN)
#define LED_OFF				gpio_set (LED_PIN_PORT, LED_PIN)

void delay_us (uint32_t delay);
void delay_ms (uint32_t delay);

#endif /* CONFIG_H */

