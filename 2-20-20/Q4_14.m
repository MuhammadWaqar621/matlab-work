clc
clear all
% part a
magic_=magic(4)
m1=magic_(:,1);
m2=magic_(:,2);
m3=magic_(:,3);
m4=magic_(:,4);
new=[m1 m3 m2 m4]


% part b
c=sum(new)
r=sum(new')
d=sum(diag(new))
rd=sum(diag(fliplr(new)))