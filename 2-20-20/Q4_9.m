clc
clear all
Temp=[100:100:1000];
Pres=[100:100:1000];
R=0.2870;
[P,T]=meshgrid(Pres,Temp);
v=(R.*T)./P