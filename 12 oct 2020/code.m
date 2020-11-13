clc
clear all
close all
t=-10:50;
v=rocket_vel(t);
plot(t,v)
grid 
xlabel('t')
ylabel('v')
title('rocket velocity ')