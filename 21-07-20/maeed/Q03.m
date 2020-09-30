clc
clear 
x=linspace(-2,2,100);
f=x.^4 + (x-3).^2;
g=10*x.*sin(2*x);
plot(x,f,x,g)
xlabel('x')
ylabel('magnitde')
title('f(x) and g(x)')
legend('f(x)','g(x)')
grid on 
