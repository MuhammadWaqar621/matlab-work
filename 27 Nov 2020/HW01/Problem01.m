clc
clear all
close all 
t=-2*pi:pi/100:2*pi;
y=abs(cos(t));
plot(t,y);
title('Problem 01')
xlabel('t')
ylabel('cos(t)')