clc
clear all
format short
data=[28.65 26.55 26.65 27.65 27.35 28.35 26.95 28.65 29.65 27.85 27.05 28.25 28.85 26.75 27.65 28.45 28.65 28.45 31.65 26.35 27.75 29.25 27.65 28.65 27.65 28.45 27.65 27.15];
mean_=mean(data)
median_=median(data)
mode_=mode(data)
range_=range(data)
std_=std(data)
var_=var(data)
% CV=std/mean
CV=getCV(data)
range=26:.5:32;
hist_=[];
for i=1:length(range)-1
   hist_= [hist_ length(data(data>=range(i)& data<=range(i+1)))];
   hold on 
end 
bar([26+.125:.5:32-.125],hist_)
xlabel('data')
ylabel('count')
title('histogram')
