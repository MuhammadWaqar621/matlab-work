% % % % % % % % % % % % % % % % % % 
% %Variable Dictionary            %
% % % % % % % % % % % % % % % % % % 
% Itme= first colum of data 
% X=second Colum 
% Y=third colum 
% Z=fourth colum 
% Fs=sample frequency
% Ts=Time period
% time=time vector 
% find_adduction= adduction angle in degree 
% rotation_angle= rotation angle in degree 
% flexion_angle= flexion angle in degree 
% max_flex= maximum angle of flexsion angle 
% min_flex= minimum angle of flexsion angle
% % % % % % % % % % % % % % % % % % % 
% clear command window
clc
% clear workspace
clear all
% close all fingure
close all
% load text file 
load_data=importdata('inclinewalkXYZ.txt');
% display load_date
disp('Text file contains:')
disp(load_data)
% make variables for each column of data
Item=load_data.data(:,1);
X=load_data.data(:,2);
Y=load_data.data(:,3);
Z=load_data.data(:,4);
% create time vector 
Fs=100;
Ts=1/Fs;
% time and X,Y,Z are must b same in length for plotting
time=0:Ts:(length(Item)/Fs)-Ts;
% find angle's 
% flexion angle
flexion_angle=[];
% loop for finding the all flexion angle 
for i=1:length(Item)
%     flexion angle calculate
    temp= atan2(Y(i),X(i));
%     concatenate all flexion angle 
    flexion_angle=[flexion_angle temp];
end 
% find max and min angle 
max_flex=max(flexion_angle);
min_flex=min(flexion_angle);
% convert from rad to degree angle 
max_flex=rad2deg(max_flex);
min_flex=rad2deg(min_flex);
disp(['Max flexion Angle:',num2str(max_flex),' degrees'])
disp(['Min flexion Angle:',num2str(min_flex),' degrees'])
% find adduction angle and rotation angle
rotation_angle=[];
find_adduction=[];
for i=1:length (Item)
    find_adduction=[find_adduction atan2(Y(i),Z(i))];
    rotation_angle=[rotation_angle atan2(X(i),Z(i))];
end 
% angle conversion 
rotation_angle=rad2deg(rotation_angle);
find_adductione=rad2deg(find_adduction);
flexion_angle=rad2deg(flexion_angle);
% plot all in one figure 
figure 
subplot 311
plot(time,flexion_angle, 'b-')
title('flexion angle')
xlabel('time [s]')
ylabel('angle[degree]')
subplot 312
plot(time,find_adductione,'y*-')
title('adductione angle')
xlabel('time [s]')
ylabel('angle[degree]')
subplot 313
plot(time,rotation_angle,'r--')
title('rotation angle')
xlabel('time [s]')
ylabel('angle[degree]')