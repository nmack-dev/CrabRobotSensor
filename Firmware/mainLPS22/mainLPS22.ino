/**
 * main.ino -- Firmware for a barometer-based force-torque sensor
 * 
 * Authors: Nathan Mack, Michael Koltisko, Anh Nguyen
 * ECSE 398 Spring 2021
 */

#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_LPS2X.h>

// Multiplexer address
#define TCAADDR 0x70

// Initialization for each barometer
Adafruit_LPS22 lps1;
Adafruit_LPS22 lps2;
Adafruit_LPS22 lps3;
Adafruit_LPS22 lps4;
Adafruit_LPS22 lps5;
Adafruit_LPS22 lps6;
Adafruit_LPS22 lps7;
Adafruit_LPS22 lps8;

// A pointer array to allow of easy access of barometer objects
Adafruit_LPS22 *sensorArray[8] = {&lps1, &lps2, &lps3, &lps4, &lps5, &lps6, &lps7, &lps8};

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

// Main firmware loop
void loop()
{
  // Contains current barometer values
  float barometerVals[8];

  // Pressure event for a given sensor
  sensors_event_t pressure;
  
  // Loops through each sensor, populating the values array with a temperature reading
  for(int i = 0; i < 8; i++)
  {
    tcaselect(i);
    *sensorArray[i].getEvent(&pressure);
    barometerVals[i] = pressure.pressure;
  } 

  //Print the readings
  for (int i = 0; i < 8; i++){
    Serial.println(barometerVals[i]);
  }
}
