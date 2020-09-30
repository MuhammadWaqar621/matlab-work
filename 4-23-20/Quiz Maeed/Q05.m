clc
clear all
% Q05
x=[0:100];
j=1;
for i=1:length(x)-nnz(rem(x,3))
    if(rem(x(j),2)==0)
        disp([num2str(x(j)),' is even'])
    else 
        disp([num2str(x(j)),' is odd'])
    end 
    j=j+3;
end 
    