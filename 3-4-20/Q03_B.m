
clc
clear all
close all
% B)
tab=[1530,116,45,110;1240,114,42,115;2380,118,41,120;1470,124,38,95;3590,126,61,118];
humidity=tab(:,3); 
b_ans=find(humidity>40&humidity<60); 
b=find(humidity<40|humidity>60) ; 
fprintf('batch %2.0f did meet the criterion for humidity\n',[b_ans]) 
fprintf('batch %2.0f did not meet the criterion for humidity\n',[b]) 