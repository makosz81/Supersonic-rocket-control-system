This project was written around Raspberry Pi 2 with RASPBIAN JESSIE LITE as the OS. The Library used for servo control is called ServoBlaster found at: https://github.com/richardghirst/PiBits

Initially the project was designed using Arduino. After some testing, it became apparent the code was too slow for assumed speeds therefore the migration to RASPBIAN JESSIE LITE was implemented. 

RASPBIAN JESSIE LITE has a faster performance.

The Gyroscope used is L3GD20H can be found at: https://www.pololu.com/product/2470 . There are no other sensors usable on the board to predict dynamics of the rocket, more specifically the accelerometer would fail at and above 50 G if read by an accelerometer. 

The motor is a seperate project and so far the mechanism for vector thrusting being used is assumed to be somekind of gimball mechanism, very similar to a gear shifter in a car.

[old]
A PID control algorithm is implimented to determine the angle of the nozzle. Kp, Ki and Kd are constants that change with rocket properties. Now a mathematical model of the rocket has to be created in order to find stable values for them. 
[old]

I am looking at adaptive control scheme now since PID is not a valid option it seems. I will update the code once I am able to. At the moment I know nothing about adabtive control scheme so cant make the new code.

This is a project to create a low cost vector-thrusting for a supersonic rocket. As of 02/24/2016 only the Gyroscope and Servos working. Initially I had an approach to use a classical controller but it is now abvious that it is not an option. It is extremely hard to mathematically model the rocket properly and even then the variables do change and will never reach calculated values. Therefore I am looking into adaptive control scheme now instead where the controller gains are calculated as the rocket is flying.

Written by Maciej Makowski
