clc
clear 
close
% Q02
N=input('Enter N:');
u(1)=3;
u(2)=2;
for n=3:N
    u(n)=(n-1)*u(n-1)+ (n) * u(n-2) + (n-1);
end 
plot(1:N,u)
xlabel('n')
ylabel('u(n)')
title('Q02')