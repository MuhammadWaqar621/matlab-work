clc
clear all
close all
% a)
% define function is height 
% b
t=0:0.5:30;
h=height(t);
plot(t,h)
title('Path of the rocket')
xlabel('time')
ylabel('height')

% c)
[h_max,time]=max(h);
T_hmax=t(time);
fprintf('The time at which the rocket starts falling is %d sec \n',T_hmax)