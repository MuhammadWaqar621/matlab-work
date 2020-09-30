clc
clear all
xi=0;
xu=2;
f1=@(x1)1.5*x1^4 -3.2*x1^3+2.4*x1^2 +0.8*x1 + 15;
f2=@(x2)1.5*x2^4 -3.2*x2^3+2.4*x2^2 +0.8*x2 + 15;
d=((sqrt(5)- 1)/2)*(2-0)
x1=xi+d;
x2=xu+d;
f1_1=f1(x1)
f2_1=f2(x2)
% second iteration 
d=((sqrt(5)- 1)/2)*(d-0)
x1=xi+d;
x2=xu+d;
f1_2=f1(x1)
f2_2=f2(x2)