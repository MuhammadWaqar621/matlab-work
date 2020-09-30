clc
clear all
close all
% discrete time 
n=0:4;
% function
u=@(n) n;
p=@(n) 3*n;
x=@(n) 2.^n;
% plot all signals
stem(u(n))
hold on 
stem(p(n))
hold on 
stem(x(n))
hold on 
grid 
legend('u[n]','p[n]','x[n]')
xlabel('n')
ylabel('functions')
title('Discrete Time Signals')
% u and p conv
part_c=conv(u(n),p(n));
figure
stem(part_c)
xlabel('n')
ylabel('u[n]*p[n]')
title('u[n]*p[n]')

% p and x conv
part_d=conv(p(n),x(n));
figure
stem(part_d)
xlabel('n')
ylabel('p[n]*x[n]')
title('p[n]*x[n]')

% x and u conv
part_e=conv(x(n),u(n));
figure
stem(part_e)
xlabel('n')
ylabel('x[n]*u[n]')
title('x[n]*u[n]')
% part f
% the length of the conv function is the 2*n-1 in each case

