clc
clear all
close all
X=[2 2 0 -3 -2 -1 0 0 3];
Y=[0 1.5 3.1 2 0 -3 0 -1 3];
r=[];
angle=[];
pi=180;
for i=1:length(X)
    r=[r sqrt(X(i)^2 + Y(i)^2)];
    if (X(i)<0 &&Y(i)>0)
        angle=[angle atand(Y(i)/X(i))+pi];
    elseif(X(i)<0 &&Y(i)<0)
        angle=[angle atand(Y(i)/X(i))-pi];
    elseif(X(i)<0 &&Y(i)==0)
        angle=[angle pi];
    elseif(X(i)==0 &&Y(i)>0)
        angle=[angle pi/2];
    elseif(X(i)==0 &&Y(i)<0)
        angle=[angle -pi/2];
    elseif(X(i)==0 &&Y(i)==0)
        angle=[angle 0];
    else 
        angle=[angle atand(Y(i)/X(i))];
    end 
end 
fprintf(' X  \t\t\tY\t\t\tr\t\t\tAngle\n')
table=[X',Y',r',angle'];
disp(num2str(table))