
clc
clear all
close all
angle=0:pi/100:2*pi;
sine=sin(angle);
plot(angle,sine)
[x,y]=ginput(1);
disp(['selected max value is :',num2str(y)])
disp(['max value is :',num2str(max(sine))])
disp(['Difference of max value is :',num2str(max(sine)-y)])
