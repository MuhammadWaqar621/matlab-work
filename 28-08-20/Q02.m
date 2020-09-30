clc;
clear all;
close all;
n=-5:10; % Discrete time range
% Impulse
Impn=(n==0); % Generating Impulse Sequence
subplot(311);
stem(n,Impn);
title('Impulse del(n)');
xlabel('n ----->');
ylabel('Amplitude ----->');
% Step
un=(n>=0); % Generating Unit Step Sequence
subplot(312);
stem(n,un);
title('Step u(n)');
xlabel('n ----->');
ylabel('Amplitude ----->');
% Ramp
rn=n.*(n>=0); % Generating Unit Ramp Sequence
subplot(313);
stem(n,rn);
title('Ramp r(n)');
xlabel('n ----->');
ylabel('Amplitude ----->');
