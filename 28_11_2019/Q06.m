clc
clear all
close all
A=[0 1 ;-25 -4];
B=[1 1 ;0 1 ];
C=[1 0 ;0 1];
D=[1 0 ;0 1];
sys=ss(A,B,C,D);
tf(sys)