#include <Wire.h>
#include <CPS123.h>

CPS123 barometer;

void setup() {
    barometer.begin();
    Serial.begin(9600);
}

void loop() {
    barometer.readRegister();
    Serial.println(barometer.getPres());
}