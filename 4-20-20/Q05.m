
clc
clear all 
A=[5 -3 7 ; 1 0 -6; -4 8 9];
B=[3 2 -1 ;6 8 -7; 4 4 0];
C=[-9 8 3 ; 1 7 -5; 3 3 6];
Part_a1=5*(B+C)
Part_a2=5*B+5*C
partB_left=inv((B*C))
partB_right=inv(B)*inv(C)
partC_left=(A+B)'
partC_right=A'+B'