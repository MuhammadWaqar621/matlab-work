clc
clear all
% Q10.14
A=[2 -1; 2 5]
[r c]=size(A);
if (r-c==0)
    det_A=det(A) 
else 
     disp('matrix is not square')
end

if(det_A==0)
    disp('A Has No Inverse')
else
    inv_A=inv(A)
end

B=[4 2; 2 1]
[r c]=size(B);
if (r-c==0)
    det_B=det(B)
else 
    disp('matrix is not square')
end

if(det_B==0)
    disp('B Has No Inverse')
else
    inv_B=inv(B)
end


C=[2 0; 1 2; 5 -4]
[r c]=size(C);
if (r-c==0)
    det_B=det(C)
else 
    disp('matrix is not square')
end

if(det_B==0)
    disp('C Has No Inverse')
else
    inv_C=inv(C)
end




