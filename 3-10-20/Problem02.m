clc
clear all 
close all
% Assume initial projectile positions
% and Initial velocity are constant
x=0;
y=4;
v0=80;
% Range for angle of projection
theta=50:10:90;  
g=9.8;
disp('part a')
% a) and b)
fprintf('Theta(d)\t height(m)\t Range(m)\n');
for t = 1:length(theta)
    % maximum height
    ph=get_maxheight(v0,theta(t));
    % Range
    R=get_Range(ph,theta(t));
    % Display possible height and range
    fprintf('%.2f \t\t %.2f\t\t %.2f\n',theta(t),ph,R);
    x1=x:1:R;
    y1=zeros(length(x1));
    for i=1:length(x1)
        y1(i)=trajectory(x1(i),v0,theta(t));      
    end
    % Plot the possible paths of motion
    plot(x1,y1)
    %Add a title to plot
    title('Projectile path')
    %Add a grid
    grid on
    %Add labels
    xlabel('x')
    ylabel('y')
    hold on
end
disp('part c')
% c)
% Assume angle of projection
% and Initial velocity are constant
x=0;
v0=80;
theta=45;
% Range for vertical position
y=2:2:10;
% Display possible height and range
fprintf('y(m)\t height(m)\t Range(m)\n');
for t = 1:length(y)
    % maximum height
    ph=get_maxheight(v0,theta);
    % Range
    R=get_Range(ph,theta);
    fprintf('%.2f \t\t %.2f\t\t %.2f\n',y(t),ph,R);
end
