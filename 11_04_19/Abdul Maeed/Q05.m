clc
clear all 
r=randi([-10 10],1,20)
sum_=0;
for i=1:length(r)
    if(r(i)>0)
        sum_=sum_ + r(i);
    end 
end 
sum_