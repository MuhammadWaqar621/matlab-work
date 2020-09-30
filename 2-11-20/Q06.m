clc
clear all
mu=0.35;
theta=[5:5:35]
%a 
F= 70*mu ./(mu.*sind(theta) + cosd(theta))
% b
angle=[5:0.01:35];
F1= 70*mu ./(mu.*sind(angle) + cosd(angle));
[min_F I]=min(F1);
min_F
min_at_angle=angle(I)
[max_F Ind]=max(F1);
max_F
max_at_angle=angle(Ind)


