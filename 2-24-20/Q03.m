clc
clear all
A=[1 1 1 0; 2 -2 -5 0; 3 0 1 1; 4 -2 -3 1];
B=[6;13;13;1];
output=inv(A)*B;
x=output(1)
y=output(2)
z=output(3)
w=output(4)