clc
clear 
close all
k=5;
m=0.5;
T=10;
N=100;
v0=.1;
x0=1;
time=linspace(0,T,N);
[x,v]=Task01(x0,v0,k,m,T,N);
hold on 
plot(time,x)
grid 
xlabel('time')
ylabel('x')
title('task 01 part c ')