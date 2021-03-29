#ifndef ARDUINO_CPS123_CPS123_H
#define ARDUINO_CPS123_CPS123_H

#if ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

#include <Wire.h>

#define CPS123_DEFAULT_ADDRESS  (0x6D)
#define CPS123_CONVERSION_DELAY (100) // in ms

class CPS123 {
public:
    CPS123();

    uint8_t getAddr();
    uint8_t getDelay();
    void readRegister();
    void begin();
    float getPres();
    float getTemp();

protected:
    float pressure;
    float temperature;

private:
    uint8_t I2C_address;
    uint8_t conversion_delay;
};

#endif //ARDUINO_CPS123_CPS123_H
