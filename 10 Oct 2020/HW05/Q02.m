clc
clear all
speed=input('enter wind speed in mph:');
if speed< 39
    disp('torpical depression')
elseif speed >=40 && speed <=74
    disp('torpical storm')
elseif speed>=75
    disp('hurricane')
end 