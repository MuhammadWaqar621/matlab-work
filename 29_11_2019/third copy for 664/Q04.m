clc
clear all;
close all
f=@(x)(-3.8*(x -664)^2 -8.6*(x -664) -500-664);
 a=f(0);
 f=@(x)(-3.8*(x -664)^2 -8.6*(x -664) -800-664);
 b=f(0);
c =4;
limits_iteration=100;
iteration_rect = sym(zeros(1,limits_iteration));
iteration_trapz = sym(zeros(1,limits_iteration));
iteration_simpshon = sym(zeros(1,limits_iteration));
for i = 1:limits_iteration   
    dx = (b-a)/i;
    sum_rect = 0;
    for p = 1:i
        X = a + p*(dx)-(dx/2); 
        Y = sqrt(((X^2)-(c^2)))/X;
        sum_rect = sum_rect + Y*dx;      
    end
    iteration_rect(i) = sum_rect;
    
    % Trap Method
    dx = (b-a)/(i-1);
    sum_trpz = 0;
    for q = 1:i
        X = a + ((q-1)*dx); 
        Y = sqrt(((X^2)-(c^2)))/X;
        if (q == 0)||(q == i)
            coeff = 0.5;
        else
            coeff = 1;
        end
    sum_trpz = sum_trpz + (coeff*Y*dx);
    end
    iteration_trapz(i) = sum_trpz;
    
 
    sum_simpson = 0;
    for r = 1:i
         X = a + ((r-1)*dx); 
         Y = sqrt(((X^2)-(c^2)))/X;
         if (mod(r,2) == 0)
            coeff = 4;
         else
            coeff = 2;
         end
         if (r == 0)||(r == i)
            coeff = 1;
         end
    sum_simpson = sum_simpson + (coeff*Y*dx*(1/3));
    end
    iteration_simpshon(i) = sum_simpson;
end

plot(iteration_rect)
hold on;
plot(iteration_trapz);
hold on;
plot(iteration_simpshon);
hold on
legend('Rectangle Method','Trapeziod','Simpson Rule');
title('Error in surface area ');
xlabel('Iteration');
ylabel ('Error');
grid on;
