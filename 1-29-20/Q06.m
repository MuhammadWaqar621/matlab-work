clc
clear all
close all
u_0=0;
v_0=10;
Tn=4;
Wn=2*pi/Tn
max_dis=v_0/Wn
figure(2)
plot(linspace(0,Tn,100),linspace(0,max_dis,100));
xlabel('time')
ylabel('displacement')
title ('SDOF of fig Q06')
grid on 

