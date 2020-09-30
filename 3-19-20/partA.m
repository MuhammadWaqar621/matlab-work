

clc
clear all
A=[15;10;-8;12];
x=[13 8 -12 5; -2 28 11 -10;4 2 -17 1;1 -12 3 15];
x=[x A]
for n = 1:(length(x)-1)
        % Step 1: make the row N's Nth term 1 by dividing 
        % the whole row by it
        A = x(n,:);
        A = A/A(n);
        x(n,:) = A;
        
        % Step 2: for every other row add to it -1 * that rows Nth term *
        % the Nth row
        for k = 1:(length(x)-1)
            if n~=k
                x(k,:) = A*(-1*x(k,n)) + x(k,:);
            end
        end
    end
    
    y = x(:,length(x))'