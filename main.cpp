#include <iostream>
#include <unistd.h>
#include <sys/time.h>
#include <math.h>
#include <wiringPi.h>
#include <stdlib.h>

#define DT 0.02
#define AA 0.75

using namespace std;

		
int main(int argc, char** argv) {

	//Set up PWM
	if (wiringPiSetup() == -1)
		exit(1);
	pinMode(1, PWM_OUTPUT) ; //Green goes to GPIO18, black goes to adjacent ground

	int pwmValue = 0;
	
	int i = 0;
	while(i<60)
	{	
		cin >> pwmValue;
		pwmWrite(1,pwmValue);
		i++;
		
        system("clear");
	}
	pwmWrite(1,0);
	return 0;
}
