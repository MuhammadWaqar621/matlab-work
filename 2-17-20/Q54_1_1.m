clc
clear all 
close all
n=100;
a(1)=0;
a(2)=1;
for i=1:n-2;
    a(i+2)=a(i+1)+a(i);
end
semilogy(a)
title ('Fibonacci numbers and ration ')
xlabel ('---n')
ylabel('fib')
hold on 
grid 
for i=1:n-1;
    ratio(i)=a(i+1)/a(i);
end 
plot(ratio,'-o')