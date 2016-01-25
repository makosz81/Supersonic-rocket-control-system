# Supersonic-rocket-control-system

This project is written around Raspberry Pi 2 with RASPBIAN JESSIE LITE as OS.
Llibrary used for servo control is called ServoBlaster found at: https://github.com/richardghirst/PiBits

Initially I tried to design it for an Arduino but it was really quick before small amount of code became too slow for assumed needed speeds. Therefore I moved to Raspberry Pi which defenetly has faster performance.

Gyroscope used: L3GD20H Found: https://www.pololu.com/product/2470
No other sensors on the board are used due to assumed dynamics of the rocket more specifically the accalaration which is 50g and above rated accelorometer. 

The motor is a seperate project and so far the mechanism for vector thrusting used is assumed to be somekind of gimball mechanism, very similar to gear shifter in a car.

This is a project to create a low cost vector thrusting for a supersonic rocket.
As of 01/24/2016 I only have a Gyroscope and Servos working.
Next step is to design and analyze the dynamics of the rocket and program it to respond accordingly.

Written by Maciej Makowski
