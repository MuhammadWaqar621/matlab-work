clc
clear 
close 
x=0.01:0.1:100;
y=1./(2*x.^2);
plot(x,linspace(min(y),max(y),length(x)))
title('linear plot')
xlabel('x')
ylabel('y')
grid on 
figure(2)
plot(x,logspace(min(y),max(y),length(x)))
grid on 
title('loglog plot')
xlabel('x')
ylabel('y')