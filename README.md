# Universal mCu based Multi Protocol communication device

Pinout:
	PA0-PA7	-> GPIO [7:0]
	PA9     -> UART TX
	PA10    -> UART RX
	PB6-PB9 -> PWM1, PWM2
	PB10    -> I2C SCL
	PB11    -> I2C SDA
	PB12    -> SPI SS
	PB13    -> SPI CLK
	PB14    -> SPI MISO
	PB15    -> SPI MOSI
	
if PB0 == 0 then this device acts as USB<->UART transceiver
	
