clc
clear all
close all
% define x
x=0:0.02:3/4*pi;
% generate f and h 
f=cos((5*pi*x)-pi);
h=7*sin((45*pi*x )- (pi/6));
% plot f and h 
figure 
subplot 121
plot(f)
xlabel('t')
ylabel('Mag')
title('f')
subplot 122
plot(h)
xlabel('t')
ylabel('Mag')
title('h')
% addition of f and h
part_a=f+h;
figure 
plot (part_a)
title('f(x)+h(x)')
xlabel('x')
ylabel('Mag')
% Multiplication of f and h 
part_b=f.*h;
figure 
plot (part_b)
% part c
% plot and label 
title('f(x)*h(x)')
xlabel('x')
ylabel('Mag')
% part d
% yes, signal are periodic. signals repeat it self after some interval 