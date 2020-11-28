clc
clear all
format short
data=[.9 1.42 1.3 1.55 1.63 1.32 1.35 1.47 1.95 1.66 1.96 1.47 1.92 1.35 1.05 1.85 1.74 1.65 1.78 1.71 2.29 1.82 2.06 2.14 1.27];
mean_=mean(data)
median_=median(data)
mode_=mode(data)
range_=range(data)
std_=std(data)
var_=var(data)
% CV=std/mean
CV=getCV(data)

