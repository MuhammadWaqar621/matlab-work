function z=hasInverse(X)
% Q03
[r,c]=size(X);
if(r-c==0)
    if(det(X)==0)
        z=0;
    else 
        z=1;
    end 
else 
    z=0;
end 
end 
