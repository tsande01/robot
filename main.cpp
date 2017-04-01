#include <iostream>
#include "L3G.cpp"
#include "LSM303.cpp"
#include "I2CBus.cpp"
#include "linux/i2c-dev.h"
#include <unistd.h>
#include <sys/time.h>
#include <math.h>
#include <wiringPi.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/types.h>

#define G_GAIN 0.070
#define A_GAIN 0.0573
#define RAD_TO_DEG 57.29578
#define M_PI 3.14159265358979323846
#define GRAV 32.174 //GRAVITY ACCELERATION IN FT/S^2
#define LENGTH 3.25 //HALF HEIGHT IN FT
#define CIRC 3.272 //CIRCUMFERENCE

#define DT 0.02
#define AA 0.75

using namespace std;

int mymillis()
{
	struct timeval tv;
	gettimeofday(&tv, NULL);
	return (tv.tv_sec)*1000+(tv.tv_usec)/1000;
}
		
int main(int argc, char** argv) {
	
	float rate_gyr_x = 0.0;
	float gyroXangle = 0.0;
	float AccXAngle = 0.0;
	float CFangleX = 0.0;
	float AngularAcceleration = 0.0;
	
	int startInt = mymillis();
	int endInt = 0;
	int timeLapse = 0;
	
	const char * deviceName = "/dev/i2c-1";
	//Enable Gyro
	L3G gyro = L3G(deviceName);
	gyro.enable();
	//Enable Accelerometer/Magnetometer
	LSM303 accel = LSM303(deviceName);
	accel.enable();
		
	//Set up PWM
	if (wiringPiSetup () == -1)
		exit (1) ;
	pinMode (1, PWM_OUTPUT) ;
	
	int val = 0;
	int velocity1 = 0;
	int velocity2 = 0;
	int acceleration = 0;
	
	int i = 0;
	while(i<6000)
	{	
		startInt = mymillis();
		gyro.read();
		accel.readAcc();
		
		rate_gyr_x = (float) (gyro.g[0] * G_GAIN);
		gyroXangle += (float) rate_gyr_x*DT;  //implement calibration
		AccXAngle = (float) ((atan2(accel.a[1], accel.a[2]) + M_PI) * RAD_TO_DEG);
		AngularAcceleration = (float) (accel.a[1] * A_GAIN * RAD_TO_DEG / 400); //implement calibration
			
		if(AccXAngle >180)
		{
			AccXAngle -= (float)360.0;
		}
		//Complementary Filter Angle
		CFangleX= (float) ((AA) * (CFangleX + rate_gyr_x * DT) + (1 - AA) * AccXAngle);
		
		//Calculate Velocity
		acceleration = (int) (GRAV * tan(CFangleX * M_PI / 180) - LENGTH * AngularAcceleration / cos(CFangleX * M_PI / 180));
		velocity2 = acceleration+velocity1;
		val = (int) ((velocity2 / CIRC) * 1.306 + 375.26);

		
		if(val<375)
			val = 375;
		if(val>890)
			val = 890;
		
		velocity1 = (int) ((val - 375.26) * CIRC / 1.306);
		
		pwmWrite(1,val);
		
		//cout<<CFangleX<<"   "<<AngularAcceleration<<"    "<<acceleration<<"     "<<velocity2<<"     "<<val<<endl;
		i++;
		
		while(mymillis() -startInt < DT*1000)
		{
			sleep(100);
		}		
	}
	pwmWrite(1,0);
	return 0;
}
