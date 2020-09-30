clc
clear all
close all
% from the given figure
% part_A
A=9;
T=2;
f=1/T;
w=2*pi*f;
phase_shift=45;
t=0:0.01:4;
s=A*cos(w.*t+phase_shift);
plot(t,s,'r')
xlabel('time(seconds)')
ylabel('s(t)')
title('Original plot')
grid on
% part_b
part_b=9*sin(-w.*t+phase_shift);
figure
plot(t,part_b,'r')
xlabel('time(seconds)')
ylabel('s(t)')
title('Sin plot')
grid on