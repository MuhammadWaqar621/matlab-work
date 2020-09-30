clc
clear all
delta_x=0.1;
x_0=0.1*delta_x;
x=x_0;
y0=x^5 * exp(-x^2);
x_1=0.2*delta_x;
x=x_1;
y1=x^5 * exp(-x^2);
second_order=[];
for i=0.3:0.1:4.9
    x_i=i*delta_x;
    x=x_i;
    y2=x^5 * exp(-x^2);
    temp=(y0- 2*y1 + y2)/(delta_x^2);
    second_order=[second_order temp];
    y0=y1;
    y1=y2;
end 
min(second_order)