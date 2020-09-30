clc,clear 
n=3;
m=4;
for i=1:n
    for j=1:m
        if(i==j)
             A(i,j)=1;
        elseif (j==i+2 || i==j+2)
            A(i,j)=i*j;
        elseif(j>i+2 || i>j+2)
            A(i,j)=-(i+j);
        else 
            A(i,j)=0;
        end 
    end 
end 
A