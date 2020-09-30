clc
clear all
P=input('Enter a number for calculating its cubic root:');
x(1)=P; 
E=1;
i=1;
while E>0.00001 
    x(i+1)=x(i)*((x(i)^3)+(2*P))/((2*(x(i)^3))+P);
    E=abs((x(i+1)-x(i))/x(i));
    i=i+1;
end
root=x(i)
fprintf(' the cubic root of %4.2f is %8.5f \n',P,root)