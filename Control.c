#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
//#include <string.h>
//#include <time.h>
#include "/home/pi/lib/sensor.c"


#define DT 0.02         // [s/loop] loop period. 20ms
#define G_GAIN 0.070     // [deg/s/LSB]

int main(int argc, char *argv[])
{
	struct timeval tv;
	gyroSetup();
//	servoSetup();
	FILE*fcount;
	fcount = fopen("data_10_min.dat","w");
	gettimeofday(&tv,NULL);
	int t_start = tv.tv_usec;
	unsigned int t_elapsed = 0;
	unsigned int t_end = 600000;

	int i = 50;

	float rate_gyr_y = 0.0;   // [deg/s]
	float rate_gyr_x = 0.0;    // [deg/s]
	float rate_gyr_z = 0.0;     // [deg/s]

	int  gyrRaw[3];

	//Rocket physical properties
	float mInertia = 40.132;
	float thrust = 20000;
	float lenght = 3.6576/2;

	//PID constants
	float Kp = 0.01;
	float Ki = 0.001;
	float Kd = 0.002;
	float angle_dX = 0;
	float angle_dY = 0;

	//initial Conditions for X-axis
	float p_errorX = 0;
	float errorX;
	float integralX = 0;
	float derivativeX = 0;
	float uX = 0;
	float angle_cX = 2*(3.14/180);

	//Initial Conditions for Y-axis
	float p_errorY = 0;
	float errorY;
	float integralY = 0;
	float derivativeY = 0;
	float uY = 0;
	float angle_cY = 2*(3.14/180);

	float gyroXangle = 0.0;
	float gyroYangle = 0.0;
	float gyroZangle = 0.0;

//	struct  timeval tvBegin, tvEnd,tvDiff;

	while(t_elapsed < t_end)
	{
		readGYR(gyrRaw);
		gettimeofday(&tv,NULL);
		t_elapsed = tv.tv_usec - t_start;
//	printf("time= %d\n", t_elapsed);

		//Convert Gyro raw to degrees per second
		rate_gyr_x = (float) gyrRaw[0]  * G_GAIN;
		rate_gyr_y = (float) gyrRaw[1]  * G_GAIN;
		rate_gyr_z = (float) gyrRaw[2]  * G_GAIN;

		//Calculate the angles from the gyro
		gyroXangle+=rate_gyr_x*DT;
		gyroYangle+=rate_gyr_y*DT;
		gyroZangle+=rate_gyr_z*DT;
		//printf("%f, %f, %f\n",gyroXangle,gyroYangle,gyroZangle);
		//printf("%f, %f, %f\n",rate_gyr_x,rate_gyr_y,rate_gyr_z);
		fprintf(fcount,"%d, %d, %d, %d\n",gyrRaw[0],gyrRaw[1],gyrRaw[2],t_elapsed);
	
		//PID for x-axis
		p_errorX = errorX;
		errorX = angle_dX - angle_cX;
		integralX = integralX + errorX*t_elapsed;
		derivativeX = (errorX - p_errorX)/t_elapsed;
		uX = Kp*errorX+Ki*integralX+Kd*derivativeX;
		angle_cX = gyroXangle;
	
		//PID for Y-axis
		p_errorY = errorY;
		errorY = angle_dY - angle_cY;
		integralY = integralY + errorY*t_elapsed;
		derivativeY = (errorY - p_errorY)/t_elapsed;
		uY = Kp*errorY+Ki*integralY+Kd*derivativeY;
		angle_cY = gyroYangle;


		//system("echo 0=50% > /dev/servoblaster");
		//system("echo 0=50% > /dev/servoblaster");
	}
	fclose(fcount);
}
