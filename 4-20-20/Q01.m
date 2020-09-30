
clc
clear all
x=[-2:0.5:2];
a=(x+x.*sqrt(x+3)).*(1+2*x.^2)-x.^3
w=[15,25,35,40,55,60];
num=(4.*sind(w) + 6 );
den=(cosd(w).^2 .* sind(w)).^2;
b=num./den