#include <iostream>
#include "L3G.h"
#include "LSM303.h"
#include "linux/i2c-dev.h"
#include <unistd.h>
#include <sys/time.h>
#include <math.h>
#include <wiringPi.h>

#define G_GAIN 0.070
#define A_GAIN 0.0573
#define RAD_TO_DEG 57.29578
#define M_PI 3.14159265358979323846
#define GRAV 32.174 //GRAVITY ACCELERATION IN FT/S^2
#define LENGTH 3.25 //HALF HEIGHT IN FT
#define CIRC 3.272 //CIRCUMFERENCE IN FT
#define PWM_MAX 890 //MAX ALLOWABLE PWM IN
#define PWM_MIN 375 //MIN ALLOWABLE PWM IN


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

	float gyroscopeRateX = 0.0;
	float gyroscopeAngleX = 0.0;
	float accelerationAngleX = 0.0;
	float complimentaryFilterAngleX = 0.0;
	float angularAcceleration = 0.0;
	
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
	pinMode (1, PWM_OUTPUT) ; //Green goes to GPIO18, black goes to adjacent ground

	int pwmValue = 0;
	int velocityOld = 0;
	int velocityNew = 0;
	int acceleration = 0;
	
	int i = 0;
	while(i<6000)
	{	
		startInt = mymillis();
		gyro.read();
		accel.readAcc();
		
		gyroscopeRateX = (float) (gyro.g[0] * G_GAIN);
		gyroscopeAngleX += gyroscopeRateX*DT;  //implement calibration
		accelerationAngleX = (float) ((atan2(accel.a[1], accel.a[2]) + M_PI) * RAD_TO_DEG);
		angularAcceleration = (float) (accel.a[1] * A_GAIN * RAD_TO_DEG / 400); //implement calibration
			
		if(accelerationAngleX >180)
		{
			accelerationAngleX -= (float)360.0;
		}
		//Complementary Filter Angle
		complimentaryFilterAngleX = (float) ((AA) * (complimentaryFilterAngleX + gyroscopeRateX * DT) + (1 - AA) * accelerationAngleX);
		
		//Calculate Velocity
		acceleration = (int) (GRAV * tan(complimentaryFilterAngleX * M_PI / 180) - LENGTH * angularAcceleration / cos(complimentaryFilterAngleX * M_PI / 180));
		velocityNew = acceleration + velocityOld;
		pwmValue = (int) ((velocityNew / CIRC) * 1.306 + 375.26); //Slope and Intercept for pwm -> velocity line

        cout << pwmValue <<endl;
        //Threshold PWM Input
		if(pwmValue < PWM_MIN)
			pwmValue = PWM_MIN;
		if(pwmValue > PWM_MAX)
			pwmValue = PWM_MAX;
		
		velocityOld = velocityNew;
		
		pwmWrite(1,pwmValue);
		
		//cout<<complimentaryFilterAngleX<<"  "<<pwmValue<<endl;
		i++;
		
		while(mymillis() - startInt < DT*1000)
		{
			sleep(.00001);
		}
        system("clear");
	}
	pwmWrite(1,0);
	return 0;
}
