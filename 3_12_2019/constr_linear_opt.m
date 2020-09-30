function [ x, residue] = constr_linear_opt( A, b,M )

D=svd(A);
n=size(D);
n=n(1);
x1=A\b;
temp=sqrt(sum(x1.^2));
while (1)
    if(temp<=M)
        x=x1;
        residue=A*x(1:n) - b;
        residue=sqrt(sum(residue.^2));
        break
    else
        y=(b/D);
         x=x1;
        while(1)
            val=y(n).^2;
            x=x-val;
            temp=sqrt(sum(x.^2));
            if (temp<=M)
                break
            else 
                if (n>1)
                    n=n-1;
                end 
            end 
                break
        end 
        residue=A*x -b;
        residue=sqrt(sum(residue.^2));
        break
    end   
end 
end 