clc
clear all 
x=[-10:0.5:10];
y_a=300*cos(x).*tan(x);
y_b=x.^3 ./5 ;
y_c=log(abs(x)).*sin(x);
plot(x,y_a,'-o')
hold on 
plot(x,y_b)
hold on 
plot(x,y_c,'-+')
hold on 