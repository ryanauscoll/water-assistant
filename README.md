# Plant Water Assistant With Nucleo64 and Forth

<img src="/setup.jpg" width="600">

The aim of this project is to create an application that displays the percentage of soil moisture in a plant, indicating to the user when to water their plant.

<h2>Hardware</h2>

Hardware used:
  - Nucleo-64 microcontroller, NUCLEO-F446RE STM32 STMicroelectronics
  - Analog soil moisture sensor, ICStation 3274
  - LCD display 1602, AZDelivery HD44780
  - Breadboard 400
  - Potentiometer 10K Ω
  - Jumper cables
  - Mini-USB cable with charger
  
Resources:
  - The Reference Manual R0390 (en.DM00135183.pdf), in particular Chapter 13
  - The slides provided by the Professor regarding the Nucleo-64 STM32F446 and the 16x02 LCD display

<h2>Software</h2>

The software part of the project was developed on a MacBook Pro M1. NeoVim was used as a text editor for the programming part and the system terminal was used to install the operating system and compile the code on the card.

Software used:
  - Mecrisp Stellaris
  - Stlink (STMicroelectronics)
 
<h2>Code</h2>

Have been used various source codes provided by Professor to write the application:
  - nucle64-STM32F446RE-HAL.f for the first HAL (Hardware Abstraction Layer)
  - arduino.f to use the PIN references of the Arduino board
  - LCD-1602.f for connection with the LCD display and the definition of personalized characters

These codes have been slightly modified to allow the code to be compiled in the flash memory instead of in the RAM of the card. This is done by executing the compiletoflash command directly from the terminal.

I developed two source codes:
  - ADC-HAL.f for the HAL relating to Nucleo-64 ADC
  - main.f for the definition of the most abstract words and for the redefinition of the word INIT
  
  
  
