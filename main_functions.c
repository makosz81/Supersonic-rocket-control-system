/*
	The Gyroscope used is L3GD20H and no other sensors from the board.
	Data acquisition is based off of BerryIMU library but cut to barebones for performance and storage.
	Most of commented out lines of code are to be used if debugging is needed.
	The servo Library is ServoBlaster.
*/


#include <stdint.h>
#include "linux/i2c-dev.h"

#define GYR_ADDRESS 0x6b //adress of the typo of gyroscope
#define OUT_GYR 0x28 //location of OUT_X_L in datasheet

#define CTRL_REG1 0x20 //Set to 800Hz
#define  CTR1 0b11001111 

#define CTRL_REG4 23 //Set to 245dps
#define CTR4 0b00110000

int file;

void  readBlock(uint8_t command, uint8_t size, uint8_t *data)
{
	i2c_smbus_read_i2c_block_data(file, command, size, data);
}

void selectDevice(int file, int addr)
{
        /*if */ioctl(file, I2C_SLAVE, addr); 
/*	{
		 printf("Failed to select I2C device.");
        }*/
}

void readGYR(int *g)
{
	uint8_t block[6];
        selectDevice(file,GYR_ADDRESS);
	readBlock(0x80 | OUT_GYR, sizeof(block), block);

        *g = (int16_t)(block[0] | block[1] << 8);
        *(g+1) = (int16_t)(block[2] | block[3] << 8);
        *(g+2) = (int16_t)(block[4] | block[5] << 8);
}


void writeGyrReg(uint8_t reg, uint8_t value)
{
    selectDevice(file,GYR_ADDRESS);
    /*int result =*/ i2c_smbus_write_byte_data(file, reg, value);
/*    if (result == -1)
    {
        printf("Failed to write byte to I2C Gyr.");
        exit(1);
    }*/
}


void gyroSetup()
{

	__u16 block[I2C_SMBUS_BLOCK_MAX];

        int res, bus,  size;

        char filename[20];
        sprintf(filename, "/dev/i2c-%d", 1);
        file = open(filename, O_RDWR);
        if (file<0) {
		printf("Unable to open I2C bus!");
                exit(1);
        }
        writeGyrReg(CTRL_REG1, CTR1); // Normal power mode, all axes enabled
        writeGyrReg(CTRL_REG4, CTR4); // Continuos update, 2000 dps full scale

}

void servoSetup() {
	system("sudo /home/pi/webLib/servoBlaster/PiBits/ServoBlaster/user/servod");

}
