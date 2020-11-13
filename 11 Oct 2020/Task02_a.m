clc
clear all
close all
k=5;
m=0.5;
T=10;
N=100;
v0=.1;
x0=1;
time=linspace(0,T,N);
[x_n100,v_n100]=Task01(x0,v0,k,m,T,N);
plot(time,x_n100)
grid 
xlabel('time')
ylabel('x')
title('semi implicit euler')
hold on 
N=1000;
time2=linspace(0,T,N);
[x_n1000,v_n1000]=Task01(x0,v0,k,m,T,N);
plot(time2,x_n1000)
legend('N=100','N=1000')
Engergy_100=(1/2)*m*(v_n100).^2  + (1/2)*k*(x_n100).^2 ;
Engergy_1000=(1/2)*m*(v_n1000).^2  + (1/2)*k*(x_n1000).^2 ;
figure 
plot(time,Engergy_100)
hold on 
plot(time2,Engergy_1000)
legend('N=100','N=1000')
xlabel('time')
ylabel('energy')
title('discrete energy')
grid  on