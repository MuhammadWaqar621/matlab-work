
clc
clear all
B=[15;10;-8;12];
A=[13 8 -12 5; -2 28 11 -10;4 2 -17 1;1 -12 3 15];
[M,N] = size(A);        % Size of matrix
x = zeros(M,1);         % Zero matrix initialization for solution
err = 1e-6;             % Initialise error limit
while(1)   
    x2 = x;
    for m = 1:N
        
        x(m) = (B(m) - (A(m,1:m-1)*x2(1:m-1))-(A(m,m+1:N)*x2(m+1:N)))/(A(m,m));
        
    end
    
    errorVal = abs(x2-x);           % Calculation of error
    if errorVal<=err
       break;
    end
end
x'