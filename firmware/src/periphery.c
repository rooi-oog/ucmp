#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/stm32/i2c.h>
#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/usart.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/cm3/nvic.h>

#include "usb/usb.h"

#define APB2_CLK			72000000
#define APB1_CLK			36000000
#define TIM4_CLK			APB1_CLK

#define PWM_WIDTH		7
#define PWM_MAX_VAL		((uint16_t) ((1 << PWM_WIDTH) - 1))
#define PWM_FREQ			20000

#define PWM_P			TIM4_CCR1
#define PWM_N			TIM4_CCR2

void clock_setup (void)
{
	rcc_clock_setup_in_hse_8mhz_out_72mhz ();	
	rcc_periph_clock_enable (RCC_GPIOC);
	rcc_periph_clock_enable (RCC_GPIOA);
	rcc_periph_clock_enable (RCC_GPIOB);
	rcc_periph_clock_enable (RCC_AFIO);
}

void usb_setup (void)
{
	rcc_periph_clock_enable (RCC_OTGFS);
	usb_cdcacm_init ();
}

void uart_setup ()
{	
	rcc_periph_clock_enable (RCC_USART1);
	
	nvic_enable_irq (NVIC_USART1_IRQ);						// USART1 interrupt enable	
	
	/* Setup UART parameters. */
	usart_set_baudrate (USART1, 115200);
	usart_set_databits (USART1, 8);
	usart_set_stopbits (USART1, USART_STOPBITS_1);
	usart_set_parity (USART1, USART_PARITY_NONE);
	usart_set_flow_control (USART1, USART_FLOWCONTROL_NONE);
	usart_set_mode (USART1, USART_MODE_TX_RX);

	/* Enable USART1 Receive interrupt. */
	USART_CR1(USART1) |= USART_CR1_RXNEIE | USART_CR1_TCIE;

	/* Finally enable the USART. */
	usart_enable (USART1);
}

void gpio_setup (void)
{
	/* Single LED onboard :( */
	gpio_set_mode (GPIOC, GPIO_MODE_OUTPUT_2_MHZ, GPIO_CNF_OUTPUT_PUSHPULL, GPIO13);
	
	/* Set PA0-PA7 to INPUT by default */
	for (int i = 0; i < 8; i++)
		gpio_set_mode (GPIOA, GPIO_MODE_INPUT, GPIO_CNF_INPUT_FLOAT, (1 << i));
		
	/* PWM output */
	gpio_set_mode (GPIOB, GPIO_MODE_OUTPUT_2_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, 
					GPIO6 | GPIO7 | GPIO8 | GPIO9);
	
	/* USART1 pins */
	gpio_set_mode (GPIOA, GPIO_MODE_OUTPUT_2_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO9);
	gpio_set_mode (GPIOA, GPIO_MODE_INPUT, GPIO_CNF_INPUT_FLOAT, GPIO10);
	
	/* Check if USB<->UART mode */
	gpio_set_mode (GPIOB, GPIO_MODE_INPUT, GPIO_CNF_INPUT_PULL_UPDOWN, GPIO0);
	gpio_set (GPIOB, GPIO0);
		
	/* LED off */	
	gpio_set (GPIOC, GPIO13);	
}

void i2c_setup (void)
{
	/* Enable clocks for I2C2 and AFIO. */
	rcc_periph_clock_enable (RCC_I2C2);
	
	/* Set alternate functions for the SCL and SDA pins of I2C2. */
	gpio_set_mode (GPIOB, GPIO_MODE_OUTPUT_50_MHZ,
		      GPIO_CNF_OUTPUT_ALTFN_OPENDRAIN,
		      GPIO_I2C2_SCL | GPIO_I2C2_SDA);	// PB10, PB11

	/* Disable the I2C before changing any configuration. */
	i2c_peripheral_disable (I2C2);

	/* APB1 is running at 36MHz. */
	i2c_set_clock_frequency (I2C2, I2C_CR2_FREQ_36MHZ);

	/* 400KHz - I2C Fast Mode */
	i2c_set_fast_mode (I2C2);

	/*
	 * fclock for I2C is 36MHz APB2 -> cycle time 28ns, low time at 400kHz
	 * incl trise -> Thigh = 1600ns; CCR = tlow/tcycle = 0x1C,9;
	 * Datasheet suggests 0x1e.
	 */
	i2c_set_ccr (I2C2, 0x1e);

	/*
	 * fclock for I2C is 36MHz -> cycle time 28ns, rise time for
	 * 400kHz => 300ns and 100kHz => 1000ns; 300ns/28ns = 10;
	 * Incremented by 1 -> 11.
	 */
	i2c_set_trise (I2C2, 0x0b);

	/*
	 * This is our slave address - needed only if we want to receive from
	 * other masters.
	 */
	i2c_set_own_7bit_slave_address (I2C2, 0x32);

	/* If everything is configured -> enable the peripheral. */
	i2c_peripheral_enable (I2C2);
}

void spi_setup(void) {

	/* Enable clocks for SPI2 */
	rcc_periph_clock_enable (RCC_SPI2);
	
	/* Configure GPIOs: SS=PB12, SCK=PB13, MISO=PB14 and MOSI=PB15 */
	gpio_set_mode (GPIOB, GPIO_MODE_OUTPUT_50_MHZ, GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, 
			GPIO12 | GPIO13 | GPIO15 );

	gpio_set_mode (GPIOA, GPIO_MODE_INPUT, GPIO_CNF_INPUT_FLOAT, GPIO14);

	/* Reset SPI, SPI_CR1 register cleared, SPI is disabled */
	spi_reset (SPI2);

	/* Set up SPI in Master mode with:
	* Clock baud rate: 1/64 of peripheral clock frequency
	* Clock polarity: Idle High
	* Clock phase: Data valid on 2nd clock pulse
	* Data frame format: 8-bit
	* Frame format: MSB First
	*/
	spi_init_master (SPI2, SPI_CR1_BAUDRATE_FPCLK_DIV_64, SPI_CR1_CPOL_CLK_TO_1_WHEN_IDLE,
		          SPI_CR1_CPHA_CLK_TRANSITION_2, SPI_CR1_DFF_8BIT, SPI_CR1_MSBFIRST);

	/*
	* Set NSS management to software.
	*
	* Note:
	* Setting nss high is very important, even if we are controlling the GPIO
	* ourselves this bit needs to be at least set to 1, otherwise the spi
	* peripheral will not send any data out.
	*/
	spi_enable_software_slave_management (SPI2);
	spi_set_nss_high (SPI2);

	/* Enable SPI2 periph. */
	spi_enable (SPI2);
}

void pwm_setup () 
{
	rcc_periph_clock_enable (RCC_TIM4);
	
/* ----------------------------------------------------------------------------------------------------- */
/* -- TIM4 - configuration (PWM) ----------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------------- */

	TIM4_CCMR1	|= (TIM_CCMR1_OC1PE  | TIM_CCMR1_OC2PE  |		// Preload enable for both CH1 and CH2
	                TIM_CCMR1_OC1M_PWM1 |						// PWM mode 1 - CH1
	                TIM_CCMR1_OC2M_PWM1 );						// PWM mode 1 - CH2
	                
	TIM4_CCMR2	|= (TIM_CCMR2_OC3PE  | TIM_CCMR2_OC4PE  |		// Preload enable for both CH1 and CH2
	                TIM_CCMR2_OC3M_PWM1 |						// PWM mode 1 - CH1
	               	TIM_CCMR2_OC4M_PWM1 );						// PWM mode 1 - CH2

	TIM4_CCER	|= (TIM_CCER_CC1E | TIM_CCER_CC2E |
	                TIM_CCER_CC3E | TIM_CCER_CC4E );			// TIM4 CH1-4 output enable

	TIM4_ARR 	 = PWM_MAX_VAL;
	TIM4_PSC 	 = (TIM4_CLK / (PWM_FREQ * PWM_MAX_VAL)) * 2;	// Set PWM frequency

	TIM4_CR1	= TIM_CR1_CEN | TIM_CR1_ARPE;	
}

void systick_setup (void)
{
	/* 72MHz / 8 => 9000000 counts per second */
	systick_set_clocksource (STK_CSR_CLKSOURCE_AHB_DIV8);

	/* 9000000/9000 = 1000 overflows per second - every 1ms one interrupt */
	/* SysTick interrupt every N clock pulses: set reload to N-1 */
	systick_set_reload (8999);

	systick_interrupt_enable ();

	/* Start counting. */
	systick_counter_enable ();
	nvic_enable_irq (NVIC_SYSTICK_IRQ);
}
