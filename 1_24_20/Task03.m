clc 
clear all
close all
R=3;
V=30;
% false position method 
h0=0;
h1=3;
f=@(h) pi*h^2*abs(3*R-h)/3 - V;
for i=1:3
    h2=h1 - (f(h1)*(h1-h0)/(f(h1)-f(h0)));
    c=f(h2);
    abs_c=abs(c);
    if f(h0)*c<0
        h1=h2;
    else
        h0=h2;
    end 
end 
disp(['bisection guess after three iteration ',num2str(h2)])