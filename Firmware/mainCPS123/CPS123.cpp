#if ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

#include <Wire.h>

#include "CPS123.h"

// Abstract away platform differences in Arduino wire library
static uint8_t I2C_read(void) {
#if ARDUINO >= 100
    return Wire.read();
#else
    return Wire.receive();
#endif
}

static void I2C_write(uint8_t x) {
#if ARDUINO >= 100
    Wire.write((uint8_t)x);
#else
    Wire.send(x);
#endif
}

CPS123::CPS123() {
    I2C_address = CPS123_DEFAULT_ADDRESS;
    conversion_delay = CPS123_CONVERSION_DELAY;
}

uint8_t CPS123::getAddr() {
    return I2C_address;
}

uint8_t CPS123::getDelay() {
    return conversion_delay;
}

void CPS123::begin() {
    Wire.begin();
    temperature = 0.0;
    pressure = 0.0;
}

float CPS123::getPres() {
    return pressure;
}

float CPS123::getTemp() {
    return temperature;
}

void CPS123::readRegister() {
    Wire.beginTransmission(getAddr());
    delay(getDelay());
    Wire.endTransmission();
    Wire.requestFrom(getAddr(), (uint8_t)4);
    uint16_t Pres_3rd = I2C_read();
    uint16_t Pres_2nd = I2C_read();
    uint16_t Pres_1st = I2C_read();
    uint16_t Temp_Hi = I2C_read();
    uint16_t Temp_Lo = I2C_read();

    uint16_t raw_pressure = ((Pres_3rd << 16) | (Pres_2nd << 8) | Pres_1st);
    pressure = ((raw_pressure >> 6) / 1000;

    uint16_t raw_temperature = (Temp_Hi << 8) | Temp_Lo ;
    temperature = raw_temperature >> 8;
}


