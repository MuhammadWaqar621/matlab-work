
clc
clear all
anum = randi([3 10]);
thedata = [randi([1,350],anum,1), rand(anum,1)*5,rand(anum,1)*15];
save mydata.dat thedata -ascii
save mydata.mat