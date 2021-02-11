/* Arduino Program to drive the crab robot sensors found 
 * in Dr. Daltorio's lab.
 * Written by Gabriel Foss 7/10/2020.
 * 
 * Guggenheim, J. W., Jentoft, L. P., Tenzer, Y., &amp; Howe, R. D. (2017). 
 * Robust and Inexpensive Six-Axis Forceâ€“Torque Sensors Using MEMS Barometers. 
 * IEEE/ASME Transactions on Mechatronics, 22(2), 838-844. doi:10.1109/tmech.2017.2654446
 */

#include <Wire.h>
#include <BasicLinearAlgebra.h> //This library was added as a .zip file from github

class Sensor {
  public:
    int muxAddress; //the address of the sensor's multiplexer
    double senseData[8]; //Pressure data from each sensor

    //These variables are pulled from the research article backing this design. (Guggenheim, et. al)
    BLA::Matrix<6> Fmatrix; //force and moment matrix
    BLA::Matrix<8> Smatrix; //pressure matrix

    BLA::Matrix<6,8> Umatrix; //constant matrix: This value should be set once and used for every sensor.

    //Constructor
    Sensor(int muxAddress) {
      muxAddress = muxAddress;
    }

    // different constructor, properly set the field value to parameter passed
//  Sensor(int newMuxAddress) {
//    muxAddress = newMuxAddress;
//  }

    void calibrate(){
      double A, B, C, D;

      //parameters need to not be 1 :(
      double moduleLength = 1;
      double moduleWidth = 1;
      double moduleHeight = 1;

      //These are set to 1 because they should be removed from the program; delete these variables when the sensor is working
      double xForce = 1;
      double zForce = 1;
      double xMoment = 1;
      double zMoment = 1;

      //These are to calibrate the sensor; if there is no way to properly calculate it only K_g matters.
      double calibrationConstant = 1; //this is K
      double geometricConstant = 1; //this is K_g
      
      //A is the sensitivity of the shear load, pulled from eq. 4 in the cited research.
      double x_i = 1;  //this variable represents "the distance between the sensor and the y-axis of the beam"
      double radius = 1; 
      //There is no math library to cube variables so this is very long winded...
      double numerator = calibrationConstant * xForce * moduleHeight * x_i;
      double denominator = moduleLength * moduleWidth * moduleWidth * moduleWidth / 12;
      denominator = denominator + (radius * radius * moduleLength * moduleWidth);
      denominator = denominator + (moduleLength * moduleLength * moduleLength * moduleWidth / 12);
      denominator = denominator * 2;
      A = numerator / denominator;

      //B is the sensitivity of loads along the z-axis, pulled from eq. 2.
      numerator = calibrationConstant * zForce;
      denominator = 4 * moduleLength * moduleWidth;
      B = numerator / denominator;

      //C is the sensitivity to applied moments around the x-axis, pulled from eq. 3.
      double y_i = radius; //This explanation is confusing but I believe this is correct.
      numerator = calibrationConstant * xMoment * y_i;
      denominator = radius * radius * moduleLength * moduleWidth;
      denominator = denominator + (moduleLength * moduleLength * moduleLength * moduleWidth / 12);
      denominator = denominator + (moduleLength * moduleWidth * moduleWidth * moduleWidth / 12);
      denominator = denominator * 2;
      C = numerator / denominator;

      //D is the sensitivity to applied moments around the z-axis, pulled from eq. 5.
      double toHoleDistance = 1;  //this is "a"
      numerator = calibrationConstant * geometricConstant * zMoment * moduleHeight * toHoleDistance;
      denominator = 4 * moduleWidth * moduleWidth * moduleWidth * moduleLength / 12;
      D = numerator / denominator;

      Umatrix.Fill(1);
      
      Umatrix = { A,-A,-A,-A,-A, A, A, A,
            A, A, A,-A,-A,-A,-A, A,
            B, B, B, B, B, B, B, B,
           -C,-C,-C, C, C, C, C,-C,
            C,-C,-C,-C,-C, C, C, C,
           -D, D,-D, D,-D, D,-D, D };
    }
    

    //The operation of the force sensor
    void runSensor() {

      /*
      for(int a = 0; a < 8; a=a+1) {
        TCA9548A(a);  //Multiplexer channel is set
        S(a) = getPressure(); //pressure is measured and recorded in the pressure matrix
      }
      */
      
      Multiply(Umatrix, Smatrix ,Fmatrix);  //Forces and moments are calculated from pressures
      //muxOff(); //Multiplexer is turned off to allow other sensors to be called

      
    }  

    //because I want to see the output in real time. This is just going to print to console instead of acting like a normal toString...
    BLA::Matrix<6> toString() {

      Serial.print("Fx:");
      Serial.print(Fmatrix(0));
      Serial.print(" Fy:");
      Serial.print(Fmatrix(1));
      Serial.print(" Fz:");
      Serial.print(Fmatrix(2));
      Serial.print(" Mx:");
      Serial.print(Fmatrix(3));
      Serial.print(" My:");
      Serial.print(Fmatrix(4));
      Serial.print(" Mz:");
      Serial.print(Fmatrix(5));
      Serial.println();

      Serial.println(Umatrix(3)); //for some reason this is all zeroes...

      /*
      digitalWrite(LED_BUILTIN, HIGH);   // flicks the light when the whole cycle has run
      delay(10);                       
      digitalWrite(LED_BUILTIN, LOW);
      */
      
      return Fmatrix;
    }  
};


//////////////////////////////////////INITIALIZE SENSORS HERE////////////////////////////////////////////
Sensor sensor1(0x70); 

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
  using namespace BLA;
  
  ////////////////////////////////////CALIBRATE SENSORS HERE//////////////////////////////////////////
  sensor1.calibrate(); //must have at least one sensor to calibrate all of them; all sensors must be identical.
}

//each sensor used must be initialized and calibrated.
void loop() {

  sensor1.runSensor();
  sensor1.toString();
  
}
