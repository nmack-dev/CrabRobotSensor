/**
 * main.ino -- Firmware for a barometer-based force-torque sensor
 * 
 * Authors: Nathan Mack, Michael Koltisko, Anh Nguyen
 */

#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_LPS2X.h>

// Multiplexer address
#define TCAADDR 0x70

// Initialization for each barometer
Adafruit_LPS25 lps1;
Adafruit_LPS25 lps2;
Adafruit_LPS25 lps3;
Adafruit_LPS25 lps4;
Adafruit_LPS25 lps5;
Adafruit_LPS25 lps6;
Adafruit_LPS25 lps7;
Adafruit_LPS25 lps8;

// Contains current barometer values
float barometerVals[8];

// Utilizes the "Wire" library to select multiplexer addresses
void tcaselect(uint8_t i) 
{
  if (i > 7) return;
 
  Wire.beginTransmission(TCAADDR);
  Wire.write(1 << i);
  Wire.endTransmission();  
}

// Sets up runtime parameters for the arduino
void setup()
{
    Wire.begin();
    // TODO: Test the baud rate to ensure proper function
    Serial.begin(115200);
}

void loop()
{
    
}
