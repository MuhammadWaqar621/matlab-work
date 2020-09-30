function C=my_mul(A,B)
[row1,col1] = size(A);
[row2,col2] = size(B);
C = zeros(row1,col2); 
%Initialize the final matrix
if col1 == row2
    for i = 1:row1 
        for j = 1:col2 
            for k = 1:row2 
                C(i,j) = C(i,j) + (A(i,k)*B(k,j));
            end
        end
    end

else
    disp('Error ! Inner dimensions must agree')
end
end 
