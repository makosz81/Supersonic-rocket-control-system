#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include "/home/pi/lib/main_functions" //Location of main_functions.c

#define DT 0.02
#define G_GAIN 0.070

int main(int argc, char *argv[])
{
	//set up both servos and gyro using main_functions
	gyroSetup();
	servoSetup();

	// rate of rotation about the axis
	float rate_gyr_y = 0.0;   
	float rate_gyr_x = 0.0;    
	float rate_gyr_z = 0.0;     

	//Raw Gyroscope data
	int  gyrRaw[3];
	
	//Orientation
	float gyroXangle = 0.0;
	float gyroYangle = 0.0;
	float gyroZangle = 0.0;

	while(1)
	{
		readGYR(gyrRaw);

		//Convert Gyro raw to degrees per second
		rate_gyr_x = (float) gyrRaw[0]  * G_GAIN;
		rate_gyr_y = (float) gyrRaw[1]  * G_GAIN;
		rate_gyr_z = (float) gyrRaw[2]  * G_GAIN;

		//Calculate the orientation from the gyroscope
		gyroXangle+=rate_gyr_x*DT;
		gyroYangle+=rate_gyr_y*DT;
		gyroZangle+=rate_gyr_z*DT;
	
		//Used for debugging 
		//printf("%f, %f, %f\n",gyroXangle,gyroYangle,gyroZangle);
		//printf("%f, %f, %f\n",rate_gyr_x,rate_gyr_y,rate_gyr_z);
		//printf("%d, %d, %d\n",gyrRaw[0],gyrRaw[1],gyrRaw[2]);


		//Moves the servo
		system("echo 0=50% /dev/servoblaster");
     }
}
