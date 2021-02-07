clc
clear all
close all 
alpha = 5*pi/8;
beta=pi/8;
disp('Left side value :')
leftside=sin(alpha)*cos(beta)
disp('Right side value :')
rightside=(sin(alpha-beta)+sin(alpha+beta))/2

