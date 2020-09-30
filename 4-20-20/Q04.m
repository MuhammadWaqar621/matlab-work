
clc
clear all
v1=[2.5 8 -5];
v2=[-1 6 3];
num=dot(cross(v1,v2),cross(v1,v2));
den=dot(v1,v1)*dot(v2,v2);
angle=asind(num/den)