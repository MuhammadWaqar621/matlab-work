clc
clear all
close all
m=2;
b=[1];
x=[0.01:0.1:100];
y=m.*x + b;
plot(x,y)
grid 
hold on 
semilogx(x,y);
hold on
semilogy(x,y);
hold on
loglog(x,y);
