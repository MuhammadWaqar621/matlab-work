clc
clear all
close all
w=2*pi*30;
t=0:1/300:0.2;
x=2*cos(w.*t+5)+8*cos(w.*t+9)+4*cos(w.*t);
subplot 211
plot(t,x)
xlabel('time(seconds)')
ylabel('x(t)')
title('part a')
grid
subplot 212
part_b=3.0512*cos(w.*t+2.672);
plot(t,part_b)
xlabel('time(seconds)')
ylabel('x(t)')
title('part b')
grid