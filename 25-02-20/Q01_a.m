function out=Q01_a(A)
% A=[3 -2 4;-2 6 2; 4 2 3]
[r,c]=size(A);
temp=[];
if (~isequal(r,c))
    disp('Dimension not equal ')
else
    for i=1:r
        if(isequal(A(i,:),A(:,i)'))
            temp=[temp 1];
        else 
            temp=[temp 0];
        end 
    out=all(temp);
    end 
end 
end 