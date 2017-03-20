
#include <iostream>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>

#include <wiringPi.h>

using namespace std;


int main(int argc, char** argv) {
	
  if (wiringPiSetup () == -1)
    exit (1) ;
	pinMode (1, PWM_OUTPUT) ;

	int val = 380;
	while(true)
	{
		while(val<1000)
		{
		val+=10;
		cout<<val<<endl;
		sleep(1);
		pwmWrite(1,val);
		}
	while(val>380)
		{
		val-=10;
		cout<<val<<endl;
		sleep(1);
		pwmWrite(1,val);
		}	
	}
}
