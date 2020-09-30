clear
clc
time_data=0:12;
depth_data=[0,2,5,8,15,28,32,49,57,68,110,109,130];
vel_F=[];
n=length(time_data);
for i=1:n-1
    vel_F(i)=depth_data(i+1)-depth_data(i);
end
vel_B=[];
for i=2:n
    vel_B(i-1)=depth_data(i)-depth_data(i-1);
end

vel_C=[];
for i=2:n-1
    vel_C(i-1)=(depth_data(i+1)-depth_data(i-1))/2;
end

acc_C=[];
for i=2:n-1
    acc_C(i-1)=depth_data(i+1)-2*depth_data(i)+depth_data(i-1);
end
acc_B=[];
for i=3:n
    acc_B(i-2)=depth_data(i)-2*depth_data(i-1)+depth_data(i-2);
end

acc_F=[];
for i=1:n-2
    acc_F(i)=depth_data(i+1)-2*depth_data(i+1)+depth_data(i);
end
disp('Velocity using forward difference is');
disp(vel_F);
disp('Velocity using backward difference is');
disp(vel_B);
disp('Velocity using central difference is');
disp(vel_C);
disp('Acceleration using forward difference is');
disp(acc_F);
disp('Acceleration using backward difference is');
disp(acc_B);
disp('Acceleration using central difference is');
disp(acc_C);