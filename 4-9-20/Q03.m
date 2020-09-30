clc
clear all
V=randi(100,1,100)
perc=(V./length(V)).*100;
greater_than_50=find(perc>50)
