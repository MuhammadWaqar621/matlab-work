
clc
clear all
x=[1,23,43,72,87,56,98,33];
sum_=0;
for i=1:length (x)
    sum_=sum_ + x(i);
end 
disp(['sum is with loop:',num2str(sum_)])
disp(['sum is with function sum:',num2str(sum(x))])