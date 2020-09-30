clc
clear all
v0=100;
g=9.81;
theta=[0:pi/100:2*pi];
range=(v0^2/g).*sin(2*theta);
format short e
table=[theta' range']