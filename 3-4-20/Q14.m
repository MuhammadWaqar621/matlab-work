clc
clear all
% Q14
x=input('Enter outside air Temperature:');
if(x>=80)
    disp('Wear shorts')
elseif (x>60 &x<80)
    disp('It is beautiful day')
elseif (x<=60)
    disp('Wear a jacket or coat')
end 
