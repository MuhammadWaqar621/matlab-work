clc
clear 
close all
% Sampling Intervals
Ns=input('Enter no of Sampling Intervals='); 
t=0:1/Ns:1; % time range in steps of sampling interval
x=cos(2*pi*t) + 5*t; % Generating x(t)
figure;
stem(t,x,'filled','r'); % plotting the sampled signal in red dots
title('x(n)');
xlabel('n----->');
ylabel('Amplitude----->');
