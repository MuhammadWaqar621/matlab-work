

clc
clear all
A=[15;10;-8;12];
B=[13 8 -12 5; -2 28 11 -10;4 2 -17 1;1 -12 3 15];
% x=inv(B)*A
x=linsolve(B,A)

