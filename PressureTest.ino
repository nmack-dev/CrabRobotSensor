
#include <Wire.h>


double getPressure() {
  
      //All procedures are directly from the CPS123 datasheet.
      #define address 0x6D  //hexadecimal address of CPS123

      //65792.00 is the output whether the address is correct or not :/
      //THIS IS CONSISTENT there is no change in this number and I am not getting a different result.

      //Measurement Request:
      Wire.beginTransmission(address);
      
      Wire.write(0); //write
      //ack from slave
      Wire.write(0x30);
      //ack from slave
      Wire.write(0xA);
      //ack from slave
      Wire.endTransmission();
      //STOP from slave (endTransmission not needed?)

      //Get Data:
      //Temperature data has been ignored.
      //Pressure data is recieved as three separate measurements.
      float pressureByte[3];
      pressureByte[0]=0;
      pressureByte[1]=0;
      pressureByte[2]=0;


  
      Wire.beginTransmission(address);
      Wire.write(1); //read
      //ack from slave

      //three following pressure measurements. A measurement is taken and then acknowledged
      for(int a = 0; a < 3; a=a+1) {
        pressureByte[a] = Wire.read(); //stores the measurements put out by the sensor

        //terminates the sensor after three measurements to avoid taking temperature measurements
        if (a<2)
          Wire.write(1); //ack
        else
          Wire.write(0); //nack
      }

      Wire.endTransmission();


      //IF THE OUTPUT IS CONSISTENT THESE ARE ALL -1. THIS IS A CORRECT ASSUMPTION, I CHECKED.
      Serial.println(pressureByte[0], HEX);
      Serial.println(pressureByte[1], HEX);
      Serial.println(pressureByte[2], HEX);

      //Pressure Computation (see CPS123 datasheet page 13)
      return pressureByte[2] * 65536 + pressureByte[1] * 256 + pressureByte[0] / 64 / 1000;



      //if these are all -1, then the input is always HIGH (What?).
      //I disconnected all leads from the arduino. The output did not change:
      /*
      17:15:52.141 -> -1.0000000000000000
      17:15:52.179 -> -1.0000000000000000
      17:15:52.179 -> -1.0000000000000000
      17:15:52.216 -> -65792.00
      */
      
    }



double TestPressure;


void setup() {
  Serial.begin(9600);
  delay(100);

  Wire.begin();
  TestPressure = getPressure();
  Serial.println(TestPressure);
}

void loop() {
  TestPressure = 0;
}
