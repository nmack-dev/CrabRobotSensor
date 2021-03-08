// ---------------------------------------------------------------- /
// Arduino I2C Scanner
// Re-writed by Arbi Abdul Jabbaar
// Using Arduino IDE 1.8.7
// Using GY-87 module for the target
// Tested on 10 September 2019
// This sketch tests the standard 7-bit addresses
// Devices with higher bit address might not be seen properly.
// ---------------------------------------------------------------- /

#include <Wire.h> //include Wire.h library

void setup()
{
  Wire.begin(); // Wire communication begin
  Serial.begin(9600); // The baudrate of Serial monitor is set in 9600
  while (!Serial); // Waiting for Serial Monitor
  Serial.println("\nI2C Scanner");
}

void scan()
{
  byte error, address; //variable for error and I2C address
  int nDevices;

  Serial.println("Scanning...");

  nDevices = 0;
  for (address = 1; address < 127; address++ )
  {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();

    if (error == 0)
    {
      Serial.print("I2C device found at address 0x");
      if (address < 16)
        Serial.print("0");
      Serial.print(address, HEX);
      Serial.println("  !");
      nDevices++;
    }
    else if (error == 4)
    {
      Serial.print("Unknown error at address 0x");
      if (address < 16)
        Serial.print("0");
      Serial.println(address, HEX);
    }
  }
  if (nDevices == 0)
    Serial.println("No I2C devices found\n");
  else
    Serial.println("done\n");

  delay(5000); // wait 5 seconds for the next I2C scan
}

class Sensor {
  public:
  
    int muxAddress; //the address of the sensor's multiplexer

    //Constructor
    Sensor(int muxAddress) {
      muxAddress = muxAddress;
    }

    //UNTESTED
    //Multiplexer Channel selector, the desired channel is the input to the method
    void TCA9548A(uint8_t bus) {
      Wire.beginTransmission(muxAddress);
      Wire.write(1 << bus);
      Wire.endTransmission();
    }

    //UNTESTED
    //turns all channels off so the sensors don't interact
    void muxOff() {
      Wire.beginTransmission(muxAddress);
      Wire.write(0x00);
      Wire.endTransmission();
      Serial.println("Off");
    }

      //UNTESTED
    //The operation of the force sensor
    void runSensor() {
      for(int a = 0; a < 8; a=a+1) {
        TCA9548A(a);  //Multiplexer channel is set
       // Smatrix(a) = getPressure(); //pressure is measured and recorded in the pressure matrix
       Serial.print("Channel ");
       Serial.println(a + 1);
       scan();
      }
      //Multiply(Umatrix, Smatrix, Fmatrix);  //Forces and moments are calculated from pressures
      muxOff(); //Multiplexer is turned off to allow other sensors to be called
      scan();
    }  

 };
 
//////////////////////////////////////INITIALIZE SENSORS HERE////////////////////////////////////////////
Sensor sensor1(0x77); 

//make a new object for every sensor being used.
//use the solder pads on the back of the PCB to change the address of the sensor.
//the sensor's address is the I2C address of the multiplexer.
//If there are any questions on the operation of this device, find the TCA9548A datasheet.

//each sensor used must be initialized and calibrated.
void loop() {

  sensor1.runSensor();
  //sensor1.toString();
}
