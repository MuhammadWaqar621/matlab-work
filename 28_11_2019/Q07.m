clc
clear all
close all
A=[0 1 0 0 ;-10 -2 10 2; 0 0 0 1 ;10 2 -410 -2];
B=[0 ;0 ;0 ;400];
C=[1 0 0 0 ;0 0 1 0];
D=0;
sys=ss(A,B,C,D);
tf(sys)
figure(1)
step(sys)
figure(2)
impulse(sys)