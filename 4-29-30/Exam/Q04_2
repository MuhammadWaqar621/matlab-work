for i=1:4
    for j=1:3
        if (i<j)
            W(i,j)=(i+1)/(j+1);
        elseif(i==j)
            W(i,j)=(i+j);
        else 
            W(i,j)=(i)/(j);
        end 
    end 
end
disp('W is :')
W
temp=diag(W);
part_b=sum(temp)
part_c=max(W')
part_d=min(W)
part_e=sum(sum(W))

