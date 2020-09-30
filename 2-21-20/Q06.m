clc
clear all
x=[-13:1:13];
b=32;
m=3;
y=m.*x + b;
plot(x,y)
xlabel('x')
ylabel('y')
title('Y=mx +b')