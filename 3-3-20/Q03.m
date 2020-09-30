clc
clear all
close all
% Q03 and Q04
x=-pi:0.01*pi:pi;
y1=sin(x);
hold on 
plot(x,y1,'--r')
title('Figures y1,y2 and y3')
xlabel('x in radians')
ylabel('sin(x)/sin(2x)/sin(3x)')
y2=sin(2*x);
hold on 
plot(x,y2,'-b')
y3=sin(3*x);
hold on 
plot(x,y3,':g')
