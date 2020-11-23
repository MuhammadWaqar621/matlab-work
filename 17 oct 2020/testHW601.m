clc
clear 
signal = csvread('Data.csv');
data=signal(1:5);
t=1;
for i=2:length(data)
    sloop_temp(i-1)=(data(i)-data(i-1) )/(2);
end 
data
sloop_temp