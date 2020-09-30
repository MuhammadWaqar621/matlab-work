clc
clear all
close all 
% a
x=-5:0.5:5;
y=x;
[X,Y]=meshgrid(x,y);
t1=sqrt(X.^2 + Y.^2);
Z1=sin(t1);
Z=mesh(Z1);
% b
figure 
surf(Z1);
surf(X,Y,Z1)