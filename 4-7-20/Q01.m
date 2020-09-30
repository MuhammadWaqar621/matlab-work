clc
clear all
X=[1:50];
Y=[];
Z=[];
for i=1:length(X)
    if mod(X(i),2)==0
        Z=[Z X(i)];
    else 
        Y=[Y X(i)];
    end 
end 
Y
Z
temp=Y./2;
for i=1:length(X)
    if ~(mod(X(i),2)==0)
        X(i)=temp(ceil(i/2));
    else 
        X(i)=X(i);
    end 
end 
X
average=mean(X)