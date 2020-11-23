function [x0,y0] = cell_growth_1(y0, h, xn)
f=@(x) 1e-1*x-1e-6*x.^2; %Write your f(x,y) function, where dy/dx=f(x,y), x(x0)=y0.
x0=0;
 fprintf('\n x        y ');
while x0<=xn
    y1=y0+h*f(x0);
    x1=x0+h;
    x0=x1;
    y0=y1;  
    fprintf('\n%4.3f  %4.3f ',x0,y0); %values of x and y
end