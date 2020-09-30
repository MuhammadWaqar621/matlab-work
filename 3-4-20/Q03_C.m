
clc
clear all
close all
% C)
tab=[1530,116,45,110;1240,114,42,115;2380,118,41,120;1470,124,38,95;3590,126,61,118];
pressure=tab(:,4); 
c_ans=find(pressure>100&pressure<200); 
c=find(pressure<100|pressure>200) ; 
fprintf('batch %2.0f did meet the criterion for pressure\n',[c_ans]) 
fprintf('batch %2.0f did not meet the criterion for pressure\n',[c]) 