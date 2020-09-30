clc
clear all
x=[-2:.5:2]
y=(x + x.*sqrt(x+3)).*(1+2.*x.^2) - x.^3