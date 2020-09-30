clc
clear all 
A=[5 -3 7 ; 1 0 -6; -4 8 9]
B=[3 2 -1 ;6 8 -7; 4 4 0]
C=[-9 8 3 ; 1 7 -5; 3 3 6]
Part_a_1=5*(B+C)
Part_a_2=5*B+5*C
part_b_left=inv((B*C))
part_b_right=inv(B)*inv(C)
part_C_left=(A+B)'
part_C_right=A'+B'