clc
clear all 
z=3;
y=1;
h=z*randn + j*y*randn
mag=sqrt(real(h)^2+ imag(h)^2)
angle_=phase (h)