clc
clear 
A = [1,0,3;1,2,1;3,-4,5];
B = [8;7;0];
C = inv(A)*B;
x=C(1)
y=C(2)
z=C(3)
