clc
clear all
x=input ('Enter First Number : ');
y=input ('Enter Second Number : ');
z=input ('Enter the total number:');
a=zeros(1,z);
a(1)=x;
a(2)=y;
for i=3:z
    a(i)= a(i-1) + a(i-2);
end 
fprintf('The Fibnoacci Sequence is : ');
a
fprintf('\n');
i=1:z;
polar(i,a(i));
