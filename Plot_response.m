% This is a matlab program to plot the response of the rocket using a PID controller with no disturbane ATM
% Kp, Ki and Kd have to be changed according to the mathemetical model of the actual rocket

clc; close all;clear;

Kp = -.1;                                     % Proportional constant
Ki = .00004;                                  % Integral constant
Kd = .00002;                                  % Derivative constant

angle_d = 0;                                  % Desired Angle
mInertia = 1000;                              % Moment of inertia
angle_i = 2;                                  % Staring angle in degrees
thrust = 2000;                                % Thrust
lenght = 3.6576/2;                            % Position of CG away from nozzle

time = 12;                                    % Time of simulation in seconds

%previous_error = angle_d - yp;
integral = 0;
dt = 0.001;                                   % Step size

yp = zeros(time/dt,1);
yp(1) = (angle_i)*(pi()/180);                 % Convert initial angle to radians
t = zeros(time/dt,1);

u = zeros(time/dt,1);
for i=2:time/dt
    t(i) = t(i-1)+dt;
end

% CONTROL LOOP
for i=2:time/dt
    error = angle_d-yp(i-1);                         % update error
    integral = integral + error*dt;                  % integrap update
    derivative = (error - error)/dt;                 % Derivitive term update 
    u(i) = Kp*error+Ki*integral+Kd*derivative;       % Angle of nozzle
    yp(i) = -u(i)*thrust*lenght*(i*dt)^2+yp(i-1);    % Solving for angle of rocket
end

% Results
figure(1);
plot(t,yp);
str = sprintf('Response with step Size of %f seconds\n Kp: %f Ki: %f Kd: %f',dt,Kp,Ki,Kd);
title (str);
xlabel('Time (seconds)');
ylabel('Angle of Rocket (radians)');
axis([0 time -12 12]);
hold on;
