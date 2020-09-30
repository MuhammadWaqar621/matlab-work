clc
clear all
even=[2:2:100];
odd=[1:2:100];
third=64*(ones(1,length(odd)));
plot3(even,odd,third)
vec=[]
for i=1:100
    if (mod(i,2)==0)
        vec=[vec 0];
    else 
        vec=[vec 1];
    end 
end 