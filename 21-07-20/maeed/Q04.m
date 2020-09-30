clc
clear 
num=1:2:121;
den=2:2:122;
sum=0;
for i=1:length(num)
    temp=num(i)/(den(i)^2);
    sum=sum+temp;
end 
if sum>1
    disp('The sum is greater than 1')
else
    disp('The sum is less than 1')
end 
disp(['sum is :',num2str(sum)])