
clc
clear all
close all
% A)
tab=[1530,116,45,110;1240,114,42,115;2380,118,41,120;1470,124,38,95;3590,126,61,118];
batch_number=tab(:,1); 
temperature=tab(:,2);
humidity=tab(:,3); 
pressure=tab(:,4); 
a_ans=(find(temperature>115 & temperature<125));
a= (find(temperature<115 | temperature>125));
fprintf('batch %2.0000f did meet the criterion for temperatures\n',[a_ans]) 
fprintf('batch %2.0000f did not meet the criterion for temperatures\n',[a]) 