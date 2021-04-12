/**
 * main.ino -- Firmware for a barometer-based force-torque sensor
 * 
 * Authors: Nathan Mack, Michael Koltisko, Anh Nguyen
 * ECSE 398 Spring 2021
 */

#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_MPL115A2.h>

// Multiplexer address
#define TCAADDR 0x70

// Initialization for each barometer
Adafruit_MPL115A2 mpl1;
Adafruit_MPL115A2 mpl2;
Adafruit_MPL115A2 mpl3;
Adafruit_MPL115A2 mpl4;
Adafruit_MPL115A2 mpl5;
Adafruit_MPL115A2 mpl6;
Adafruit_MPL115A2 mpl7;
Adafruit_MPL115A2 mpl8;

// A pointer array to allow of easy access of barometer objects
Adafruit_LPS22 *sensorArray[8] = {&mpl1, &mpl2, &mpl3, &mpl4, &mpl5, &mpl6, &mpl7, &mpl8};

// Contains current barometer values
// Barometer value array pointer
float barometerVals[8];
float *bValPtr = barometerVals;

// An array that represents an 8x6 matrix conatining calibration constants
// Pointer that points to arrays within the calibrationConsts array
float calibrationConsts[6][8] = {{0, 0, 0, 0, 0, 0, 0, 0},
                                 {0, 0, 0, 0, 0, 0, 0, 0},
                                 {0, 0, 0, 0, 0, 0, 0, 0},
                                 {0, 0, 0, 0, 0, 0, 0, 0},
                                 {0, 0, 0, 0, 0, 0, 0, 0},
                                 {0, 0, 0, 0, 0, 0, 0, 0}};
float (*cRowPtr)[8] = calibrationConsts;

// An array that contains the final forces values 
// Force value array pointer
float forceValues[6];
float *fValPtr = forceValues;

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
  Serial.begin(115200);
}

// Main firmware loop
void loop()
{
  // Pressure event for a given sensor
  float pressure;

  // Pointer to a cell in a row of the calibrationConsts array
  float *cCellPtr;
  
  // Loops through each sensor, populating the values array with a pressure reading
  for(int i = 0; i < 8; i++)
  {
    tcaselect(i);
    sensorArray[i]->begin();
    pressure = sensorArray[i]->getPressure();
    *bValPtr = pressure;
    bValPtr++;
  } 

  // Push barometer value pointer to start
  bValPtr -= 8;

  // Iterates through each calibration constant row
  for (int i = 0; i < 6; i++)
  {
    // Calculated force value
    float forceVal = 0;
    
    // Points to current calibrationConsts row
    cCellPtr = *cRowPtr;
    
    // Iterates through each cell in a calibration constant row
    for (int j = 0; j < 8; j++)
    {
      // Calculates the force values
      forceVal += (*cCellPtr)*(*bValPtr);
      
      // Iterates the cell pointer
      cCellPtr++;
      
      // Iterates the barometer value pointer
      bValPtr++;
    }
    
    // Sets the value of the force in the forceValues array
    *fValPtr = forceVal;

    // Iterates the force value pointer
    fValPtr++;
    
    // Resets the barometer value to start
    bValPtr -= 8;
    
    // Iterates to next calibrationConst row
    cRowPtr++;
  }
}
