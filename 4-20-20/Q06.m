
clc
clear all
A=[2 -4 5 -3.5 1.8 4;
    -1.5 3 4 -1 -2 5;
    5 1 -6 3 -2 2;
    1.2 -2 3 4 -1 4;
    4 1 -2 -3 -4 1.5;
    2 1 -1 4 -2 -4];
B=[52.52;-21.1;-27.6;9.16;-17.9;-16.2];
sol=inv(A)*B;
u=sol(1)
v=sol(2)
w=sol(3)
x=sol(4)
y=sol(5)
z=sol(6)