clc
clear all
x=0;
vec=[];
while x<=200
    if(rem(x,4)==0)
        vec=[vec x];
    end 
    x=x+1;
end 
disp('Multiples of 4 are:')
vec