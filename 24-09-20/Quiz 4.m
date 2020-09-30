clc
clear all
close all 
z=-5:1/100:5;
z_2=-(z.^2)/2;
f=(1/sqrt(2*pi))*exp(z_2);
plot(z,f)
grid 
xlabel('abscissa ')
ylabel('frequency')
title('normal probability density ')