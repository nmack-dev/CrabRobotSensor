#include <Wire.h>

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
       delay(1000);
      }
      //Multiply(Umatrix, Smatrix, Fmatrix);  //Forces and moments are calculated from pressures
      muxOff(); //Multiplexer is turned off to allow other sensors to be called
    }  

 };
 
//////////////////////////////////////INITIALIZE SENSORS HERE////////////////////////////////////////////
Sensor sensor1(0x77); 

//make a new object for every sensor being used.
//use the solder pads on the back of the PCB to change the address of the sensor.
//the sensor's address is the I2C address of the multiplexer.
//If there are any questions on the operation of this device, find the TCA9548A datasheet.

void setup() {

  Serial.begin(9600);
  delay(100);
  
  //allows me to determine arduino output without printouts
  pinMode(LED_BUILTIN, OUTPUT);
  
  //Start Wire library for I2C
  Wire.begin();

  //allow the program to calculate matrices
  //using namespace BLA;
  
  ////////////////////////////////////CALIBRATE SENSORS HERE//////////////////////////////////////////
  //sensor1.calibrate(); //must have at least one sensor to calibrate all of them; all sensors must be identical.
}

//each sensor used must be initialized and calibrated.
void loop() {

  sensor1.runSensor();
  //sensor1.toString();

/*
 * To do:
 * get I2C working and tested
 * (this is probably the most important thing)
 * 
 * rework the math behind the sensor so if the pressure is "1" everywhere there is no force on the sensor
 * meet with john to calibrate this thing
 * 
 */





  
  
}
