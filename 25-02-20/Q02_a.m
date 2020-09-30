clc
clear all
n=input('enter the n:');
while (1)
    if(n>100)
        n=input('Re_enter the value of n:');
    elseif (n<10)
        n=input('Re_enter the value of n:');
    elseif(mod(n,2)==1)
        n=input('Re_enter the value of n:');
    else 
        break
    end 
end 
matrix_=[];
for i=3:n-2
    matrix_=[matrix_;3:n-2];
end 
a=[ones(n-4,2) matrix_ ones(n-4,2)];
b=[ones(2,n);a;ones(2,n)];
b(n/2,n/2)=1;
b(n/2,n/2 + 1)=1;
b(n/2+ 1,n/2)=1;
b(n/2+ 1,n/2 + 1)=1;

disp('matrix')
b

%part  b 
imagesc(b)