clc
clear 
close 
x=0:pi/100:2*pi;
f=cosh(sin(x));
plot(x,f)
hold on
syms x
f=cosh(sin(x));
n=40;
a=-1;
b=1;
[C,X,Y] = cheby(f,n,a,b);
legend('original plot','chebyshev','coefficient list')
xlim([0 2*pi])
grid on
