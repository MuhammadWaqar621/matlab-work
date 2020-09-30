clc
clear
close all
time=linspace(0,12,13);
Depth=[0 2 5 8 15 28 32 49 57 68 110 109 130];
velocity_forword=[];
for i=1:length(time)-1
    velocity_forword(i)=Depth(i+1)-Depth(i);
end
velocity_backword=[];
for i=2:length(time)
    velocity_backword(i-1)=Depth(i)-Depth(i-1);
end
velocity_centered=[];
for i=2:length(time)-1
    velocity_centered(i-1)=(Depth(i+1)-Depth(i-1))/2;
end
acc_centered=[];
for i=2:length(time)-1
    acc_centered(i-1)=Depth(i+1)-2*Depth(i)+Depth(i-1);
end
acc_backword=[];
for i=3:length(time)
    acc_backword(i-2)=Depth(i)-2*Depth(i-1)+Depth(i-2);
end
acc_forwrod=[];
for i=1:length(time)-2
    acc_forwrod(i)=Depth(i+1)-2*Depth(i+1)+Depth(i);
end
velocity_forword
velocity_backword
velocity_centered
acc_forwrod
acc_backword
acc_centered