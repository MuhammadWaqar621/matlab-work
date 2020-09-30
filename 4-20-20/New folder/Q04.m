clc
clear all
v1=[2.5 8 -5]
v2=[-1 6 3]
angle_=asind(dot(cross(v1,v2),cross(v1,v2))/(dot(v1,v1)*dot(v2,v2)))