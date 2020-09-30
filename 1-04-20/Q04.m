clc
clear all
close all
n=0:20;
x=[];
for i=1:length(n)
    x=[x 0.5.^i];
end 
figure (1)
subplot 121
plot(x)
title('x(n)')
xlabel('--->n')
ylabel('x')
y=[];
for i=2:length(n)
    if i==2 || i==3
        y=[y 0.5*1+ x(i) - x(i-1)];
    else 
        y=[y 0.5*y(i-3) + x(i) - x(i-1)];
    end
end 
%
subplot 122
plot(y)
title('y(n)')
xlabel('--->n')
ylabel('y')
ztrans(poly2sym(y))