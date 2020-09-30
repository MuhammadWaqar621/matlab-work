clc
clear all
y=[];
for i=1:10
    for j=1:10
        x=randi(10,10);
        y=[y x];
    end 
        y=[y;y]
end 