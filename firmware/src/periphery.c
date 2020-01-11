#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/pwr.h>
#include <libopencm3/stm32/flash.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/stm32/i2c.h>
#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/usart.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/stm32/syscfg.h>

#include "config.h"
#include "stm32_usb/usb.h"
#include "i2c.h"

void clock_setup (void)
{
	rcc_osc_on(RCC_HSE);
	rcc_wait_for_osc_ready(RCC_HSE);
	rcc_set_sysclk_source(RCC_HSE);

	rcc_set_hpre(RCC_CFGR_HPRE_NODIV);
	rcc_set_ppre(RCC_CFGR_PPRE_NODIV);

	flash_prefetch_enable();
	flash_set_ws(FLASH_ACR_LATENCY_024_048MHZ);

	/* PLL: 8MHz * 4 = 48MHz */
	rcc_set_pll_multiplication_factor(RCC_CFGR_PLLMUL_MUL6);
	rcc_set_pll_source(RCC_CFGR_PLLSRC_HSE_CLK);
	rcc_set_pllxtpre(RCC_CFGR_PLLXTPRE_HSE_CLK);

	rcc_osc_on(RCC_PLL);
	rcc_wait_for_osc_ready(RCC_PLL);
	rcc_set_sysclk_source(RCC_PLL);

	rcc_apb1_frequency = 48000000;
	rcc_ahb_frequency = 48000000;
}

void gpio_setup (void)
{
	rcc_periph_clock_enable (RCC_GPIOF);
	rcc_periph_clock_enable (RCC_GPIOB);
	rcc_periph_clock_enable (RCC_GPIOA);	

	/* Single LED onboard :( */
	gpio_mode_setup (LED_PIN_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, LED_PIN);
	
	/* Turn LED off */
	LED_OFF;
}

void i2c_setup (void)
{
	i2c_init ();
}

void usb_setup (void)
{
	/* USB pins should be remaped on STM32F070 */
	rcc_periph_clock_enable (RCC_SYSCFG_COMP);	
	SYSCFG_CFGR1 = SYSCFG_CFGR1_PA11_PA12_RMP;
	
	rcc_set_usbclk_source (RCC_PLL);
	rcc_periph_clock_enable (RCC_USB);	
	
	usb_cdcacm_init ();
}

void systick_setup ()
{
	systick_set_clocksource (STK_CSR_CLKSOURCE_AHB); 

	/* SysTick interrupt every N clock pulses: set reload to N-1 */
	systick_set_reload (47999);

	systick_interrupt_enable ();

	/* Start counting. */
	systick_counter_enable ();
	nvic_enable_irq (NVIC_SYSTICK_IRQ);
}

