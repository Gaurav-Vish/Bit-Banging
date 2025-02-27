#include <8051.h>
// #include "lib/PCF8574_library-master/PCF8574.h"
// #include "lib/ArduinoCore-avr-master/cores/arduino/Arduino.h"
// #include "lib/ArduinoCore-avr-master/cores/arduino/WProgram.h"
#define SLC P3_1
#define SDA P3_2

void delay(unsigned int time) {
    while (time--);
}
// Function to initialize the I2C bus
void I2C_init(void) {
    SLC = 1;
    SDA = 1;
}   

void I2C_start(void){
    SLC = 1;
    SDA = 1;
    delay(1); // wait for 1ms
    SDA = 0;
    SLC = 0;
}

void I2C_stop(void){
    SDA = 0;
    SDA = 1;
    SLC = 0;
}

// Ack req
void I2C_Ack(void){
    SDA = 1;
    SLC = 1;
}

// Acq response
void I2C_AckR(void){
    SDA = 1;
    SLC = 1;
}

// Read
void I2C_Read(void){
    SDA = 1;
    SLC = 1;
}
//
void I2C_Write(void){
    I2C_start();
    SDA = 1;
    SLC = 1;
    delay(1); // wait for 1ms
    SLC = 0;
    SDA = 0;
    delay(1); // wait for 1ms
    // I2C_stop();
}
void main(void) {
    I2C_init();
    I2C_Write();
    // I2C_write(0xA0); // write address
    // I2C_write(0x00); // write data
    // I2C_write(0x00); // write data
    // I2C_stop();
    // I2C_write(0xA1); // read address
    // SDA = 1; // initialize for communiccation
    // SLC = 1; // initialize clock for communiccation
}