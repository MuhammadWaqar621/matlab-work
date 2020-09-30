clc
clear all
% a
% define a function is called num_grains(n)
% b
n=10:100;
N=num_grains(n)

% c
plot(n,N)
title('number of grains Vs grains size ')
xlabel('grain size(n)')
ylabel('number of grains ')