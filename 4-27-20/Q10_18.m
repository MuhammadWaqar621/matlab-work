% Q10.18
clc
clear
A=[-2 1;1 1];
B=[3;10];
part_a_inv=inv(A)*B;
disp('Inverse Method')
x=part_a_inv(1)
y=part_a_inv(2)

part_a_div=A\B;
disp('Matrix Left Division')
x=part_a_div(1)
y=part_a_div(2)

A=[5 3 -1;3 2 1; 4 -1 3];
B=[10;4;12];
part_b_inv=inv(A)*B;
disp('Inverse Method')
x=part_b_inv(1)
y=part_b_inv(2)
z=part_b_inv(3)
part_b_div=A\B;
disp('Matrix Left Division')
x=part_b_div(1)
y=part_b_div(2)
z=part_b_div(3)


A=[3 1 1 1;1 -3 7 1;2 2 -3 4; 1 1 1 1];
B=[24;12;17;0];
part_c_inv=inv(A)*B;
disp('Inverse Method')
x=part_c_inv(1)
y=part_c_inv(2)
z=part_c_inv(3)
w=part_c_inv(4)
part_c_div=A\B;
disp('Matrix Left Division')
x=part_c_div(1)
y=part_c_div(2)
z=part_c_div(3)
w=part_c_div(4)

