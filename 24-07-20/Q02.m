clc
clear all
close all
Ts=0.1;
t=0:Ts:5;
% diff equation is 
% A*diff(diff(y(t))) - B*diff(y(t))-C*y(t)=D*diff(x(t))+E*x(t)
% TF become is
% H(s)=(2s+4)/(s^2 - 3*s -3)
A=1;
B=3;
C=3;
D=2;
E=4;
% tf 
num=[D E];
den=[A -B -C];
H=tf(num,den)
% part a
figure
syms s
% u=ilaplace((2*s+4)/(s^2 -3*s- 3));
u=2*exp((3*t)/2).*(cosh((21^(1/2)*t)/2) + (21^(1/2)*sinh((21^(1/2)*t)/2))/3);
lsim(H,u,t)
% part b
figure 
step(H)