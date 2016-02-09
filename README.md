This project was written around Raspberry Pi 2 with RASPBIAN JESSIE LITE as the OS. The Library used for servo control is called ServoBlaster found at: https://github.com/richardghirst/PiBits

Initially the project was designed using Arduino. After some testing, it became apparent the code was too slow for assumed speeds therefore the migration to RASPBIAN JESSIE LITE was implemented. 

RASPBIAN JESSIE LITE has a faster performance.

The Gyroscope used is L3GD20H can be found at: https://www.pololu.com/product/2470 . There are no other sensors usable on the board to predict dynamics of the rocket, more specifically the accelerometer would fail at and above 50 G if read by an accelerometer. 

The motor is a seperate project and so far the mechanism for vector thrusting being used is assumed to be somekind of gimball mechanism, very similar to a gear shifter in a car.

A PID control algorithm is implimented to determine the angle of the nozzle. Kp, Ki and Kd are constants that change with rocket properties. Now a mathematical model of the rocket has to be created in order to find stable values for them. 

This is a project to create a low cost vector-thrusting for a supersonic rocket. As of 01/24/2016 only the Gyroscope and Servos working. Next step is to design and analyze the dynamics of the rocket and program it to respond accordingly. It's taking longer time than expected to get EOM of the rocket. CFD on it will be performed soon.

Written by Maciej Makowski
