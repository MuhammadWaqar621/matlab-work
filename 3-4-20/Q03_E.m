clc
clear all
close all
% e)
tab=[1530,116,45,110;1240,114,42,115;2380,118,41,120;1470,124,38,95;3590,126,61,118];
batch_number=tab(:,1); 
temperature=tab(:,2); 
humidity=tab(:,3); 
pressure=tab(:,4); 
c_ans=size(find(pressure>100&pressure<200)); 
c=size(find(pressure<100|pressure>200)); 
b_ans= size(find(humidity>40&humidity<60)); 
b= size (find(humidity<40|humidity>60));
a_ans=size(find(temperature>115&temperature<125)); 
a= size(find(temperature<115|temperature>125)); 
l= size(batch_number); 
p1=a_ans*100/l; 
p2=b_ans*100/l; 
p3=c_ans*100/l;
fprintf('%2.4f percent of motors passed for the temperature criterion\n',[p1]) 
fprintf('%2.4f percent of motors failed for the temperature criterion \n',[a*100/l]) 
fprintf('%2.4f percent of motors passed for the humidity criterion\n',[p2]) 
fprintf('%2.4f percent of motors failed for the humidity criterion \n',[b*100/l]) 
fprintf('%2.4f percent of motors passed for the pressure criterion\n',[p3]) 
fprintf('%2.4f percent of motors failed for the pressure criterion \n',[c*100/l]) 
fprintf('%2.4f percentage is the total percentage rate\n',[(p1+p2+p3)/3])
