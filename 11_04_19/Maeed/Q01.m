clc 
clear all
V0=20;
theta=60;
g=9.8;
Vx=V0*cosd(theta);
Vy=V0*sind(theta);
t0=0;
t1=(2*V0*sind(theta))/g
time=linspace(t0,t1,100);
Output=V0*sind(theta).*time - (g.*time.^2)./2;
plot(time,Output)
xlabel('Time ')
ylabel('Height')
title ('Trajectory')
grid on 