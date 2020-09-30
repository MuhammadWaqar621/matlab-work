clc
clear all 
close all

%Ask the user to enter horizontal position
x=get_x();
%Ask the user to enter vertical position
y=get_y();
%Ask the user to enter initial velocity
v0=get_v0();
%Ask the user to enter angle of projection
theta=get_theta();
g=9.8;
% a) and b)
% maximum height
mh=get_maxheight(v0,theta);
% Range
R=get_Range(mh,theta);
% Display maximum height and range
fprintf('Maximum height is %.2fm\n',mh);
fprintf('Range and final horizontal posistion is %.2fm\n',R);
% c)
x1=x:1:R;
y1=zeros(length(x1));
for i=1:length(x1)
    y1(i)=trajectory(x1(i),v0,theta);
end
% Plot the path of motion
plot(x1,y1,'x')
%Add a grid
grid on
%Add a title to plot
title('Projectile path')
%Add labels
xlabel('x')
ylabel('y')
hold on

