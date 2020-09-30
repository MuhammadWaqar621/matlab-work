clc
clear all;
close all
XYZ=136
f=@(x)(-3.8*(x -XYZ)^2 -8.6*(x -XYZ) -500-XYZ);
 a=f(0);
 f=@(x)(-3.8*(x -XYZ)^2 -8.6*(x -XYZ) -800-XYZ);
 b=f(0);
c =8;
iteration=50;
itera_rect = (zeros(1,iteration));
itera_trapz = (zeros(1,iteration));
itera_simp = (zeros(1,iteration));
for i = 1:iteration   
    temp = (b-a)/i;
    rect_sum = 0;
    for p = 1:i
        X = a + p*(temp)-(temp/2); 
        Y = sqrt(((X^2)-(c^2)))/X;
        rect_sum = rect_sum + Y*temp;      
    end
    itera_rect(i) = rect_sum;
    temp = (b-a)/(i-1);
    trapz_sum = 0;
    for q = 1:i
        X = a + ((q-1)*temp); 
        Y = sqrt(((X^2)-(c^2)))/X;
        if (q == 0)||(q == i)
            coeff = 0.5;
        else
            coeff = 1;
        end
    trapz_sum = trapz_sum + (coeff*Y*temp);
    end
    itera_trapz(i) = trapz_sum;
    
 
    simp_sum = 0;
    for r = 1:i
         X = a + ((r-1)*temp); 
         Y = sqrt(((X^2)-(c^2)))/X;
         if (mod(r,2) == 0)
            coeff = 4;
         else
            coeff = 2;
         end
         if (r == 0)||(r == i)
            coeff = 1;
         end
    simp_sum = simp_sum + (coeff*Y*temp*(1/3));
    end
    itera_simp(i) = simp_sum;
end

plot(itera_rect)
hold on;
plot(itera_trapz);
hold on;
title('Error in surface area with all method');
xlabel('===>Iteration');
ylabel ('====>Error Values');
plot(itera_simp);
hold on
legend('Rectangle Method','Trapeziod','Simpson Rule');
grid on;
