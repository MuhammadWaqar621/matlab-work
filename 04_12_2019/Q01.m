clc
clear all 
% Ax=B
% x=A^-1 * B
P=1;
A=[-0.866 0 0.5 zeros(1,3);
    -0.5 0 -.866 zeros(1,3);
    0.866 1 0 1 0 0;
    0.5 zeros(1,3) 1 0;
    0 -1 -.5 zeros(1,3);
    zeros(1,2) 0.866 0 0 1]
B=[0;P;zeros(4,1)]
x=inv(A)*B;
F1=x(1)
F2=x(2)
F3=x(3)
H1=x(4)
V1=x(5)
V2=x(6)