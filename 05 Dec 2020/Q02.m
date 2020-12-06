clc
clear all 
close all 
time=[0:2:24]';
Thermo1=[84.3;86.4;85.2;87.1;83.5;84.8;85.0;85.3;85.3;85.2;82.3;84.7;83.6];
Thermo2=[90;89.5;88.6;88.9;88.9;90.4;89.3;89.5;88.9;89.1;89.5;89.4;89.8];
Thermo3=[86.7;87.6;88.3;85.3;80.3;82.4;83.4;85.4;86.3;85.3;89;87.3;87.2];
% parat a
A=[time Thermo1 Thermo2 Thermo3] 
% part b
[max1,max_ind1]=max(Thermo1);
[min1,min_ind1]=min(Thermo1);
avg1=mean(Thermo1);
disp('Thermocouple 1')
disp(['max is ',num2str(max1),' at time ',num2str(time(max_ind1)),'hr'])
disp(['min is ',num2str(min1),' at time ',num2str(time(min_ind1)),'hr'])
disp(['Average is ',num2str(avg1)])
[max2,max_ind2]=max(Thermo2);
[min2,min_ind2]=min(Thermo2);
avg2=mean(Thermo2);
disp('Thermocouple 2')
disp(['max is ',num2str(max2),' at time ',num2str(time(max_ind2)),'hr'])
disp(['min is ',num2str(min2),' at time ',num2str(time(min_ind2)),'hr'])
disp(['Average is ',num2str(avg2)])
[max3,max_ind3]=max(Thermo3);
[min3,min_ind3]=min(Thermo3);
avg3=mean(Thermo3);
disp('Thermocouple 3')
disp(['max is ',num2str(max3),' at time ',num2str(time(max_ind3)),'hr'])
disp(['min is ',num2str(min3),' at time ',num2str(time(min_ind3)),'hr'])
disp(['Average is ',num2str(avg3)])
% part c
A=[A mean(A(:,2:end)')']
