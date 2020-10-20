clc
clear all
% rearrange equation in matrix form 
A=[0 -7 5;0 4 7;-4 3 -7];
B=[50;-30;40];
C=inv(A)*B;
x1=C(1)
x2=C(2)
x3=C(3)
