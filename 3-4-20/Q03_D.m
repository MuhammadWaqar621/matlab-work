
clc
clear all
close all
% D)
tab=[1530,116,45,110;1240,114,42,115;2380,118,41,120;1470,124,38,95;3590,126,61,118];
batch_number=tab(:,1); 
temperature=tab(:,2);
humidity=tab(:,3); 
pressure=tab(:,4); 
d_ans=find((temperature>115&temperature<125)&(humidity>40&humidity<60)& (pressure>100&pressure<200));
d=find((temperature<115|temperature>125)|(humidity<40|humidity>60)| (pressure<100|pressure>200));
fprintf('batch %2.0f did meet the criterion for any one of the reasons\n',[d_ans]) 
fprintf('batch %2.0f did not meet the criterion for any one of the reasons\n',[d]) 