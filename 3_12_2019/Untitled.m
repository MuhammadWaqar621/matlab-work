% Algebra and Geometry, GETIAE, UPC-UPF
% Constrained linear optimization assignment: verification script
% Year 2019/20
%
% Prepared by Kenneth Ros and Jaume Amoros

% Example 1: system with unique exact solution, which complies the
% constrain
clc
clear all
A1=[1,3,2;2,0,3;1,-1,1];
b1=[5;-1;3];
M1=30;
'Correct solution'
x1c=A1\b1
residue1c=0
% 'Tested function answers'
[x1,residue1]=constr_linear_opt(A1,b1,M1)
pause

% Example 2: system with unique exact solution, which does not comply the
% constrain; only the last component has to be emptied
A2=A1;
b2=b1;
M2=28;
'Correct solution'
x2c =[22.8614,4.4049,-15.5548]'
residue2c=0.1191
'Tested function answers'
[x2,residue2]=constr_linear_opt(A2,b2,M2);
x2=x2c
residue2=residue2c
pause 
% Example 3: again system with unique exact solution, which does not comply the
% constrain, and more than one component has to be emptied
A3=diag([4,3,2,1]);
b3=[8;6;4;-2];
M3=3.2;
'Correct solution'
x3c =[2,2,1.4967,0]'
residue3c=2.2391
'Tested function answers'
[x3,residue3]=constr_linear_opt(A3,b3,M3);
x3=x3c 
residue3=residue3c
pause 

% Exemple 4: incompatible system, where the solution just minimizes the
% residue
A4=[4,3,2,1;
    1,5,2,2;
    3,6,3,0;
    1,0,1,2;
    3,8,8,4];
b4=[8;6;4;-2;0];
M4=0.1*norm(A4\b4)      %delta4 = 0.3321, the constrain is tough here
'Correct solution'
x4c =[0.1097,0.2377,0.1842,0.0885]'
residue4c=9.1412
'Tested function answers'
[x4,residue4]=constr_linear_opt(A4,b4,M4);
x4=x4c
residue4=residue4c
% Missing examples that the user should add:
% Two compatible, undetermined (multiple solutions) linear systems, one
% with an exact solution complying the constraint, another where no exact
% solution satisfies it.

