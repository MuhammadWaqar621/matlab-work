clc
clear all
first=0;
second=1;
count=2;
fib=[first second];
while (count<20)
    fib=[fib fib(count)+fib(count-1)]
    count=count+1;
end 


