clc
clear all
T1=FtoC(40);
T2=FtoC(92);
alpha=23*10^-6;
disp('Change in Temperature')
T=T2-T1
L2=alpha*4.5*T;
L1=alpha*2.252*T;
disp('Change in Length:')
L=L2-L1