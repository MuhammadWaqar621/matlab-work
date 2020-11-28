clc
clear 
T=[-50 -30 0 60 90 110];
C=[1250 1280 1350 1480 1570 1600];
p=polyfit(T,C,1)
% y=mx+b
m=p(1);
b=p(2);
% predicat c at any value of T
y=m*100+b
