clc
clear 
a=[7 2 -3 1 0];
b=[3 10 0 7 -2];
c=[1 0 4 -6 5];
part_a=[a;b;c]
part_b=[a' b' c']
% part_c=a*b
disp('part_c')
disp('Error using  * Inner matrix dimensions must agree. ')
part_d=a.*b
