clc
clear all
A=64;
n=A;
count_a=0;
B_a=[];
while n>0
    if(mod(n,3)==0)
       count_a=count_a+1; 
       B_a=[B_a n];
    end 
    n=n-1;
end 
count_a
B_a
A=100;
count_b=0;
B_b=[];
while A>0
    if(mod(A,3)==0)
       count_b=count_b+1; 
       B_b=[B_b A];
    end 
    A=A-1;
end 
count_b
B_b