clc
clear all
a=input('Enter the  a :');
b=input('Enter the  b :');
c=input('Enter the  c :');
D=b^2 - 4*a*c;
Root1=(-b+sqrt(D))/(2*a);
Root2=(-b-sqrt(D))/(2*a);
if (D==0)
    disp('The equation has one roots ')
    Root1
elseif (D>0)
    disp('The equation has two roots ')
    Root1
    Root2
elseif (D<0)
    disp('The equation has no real roots ')
end 