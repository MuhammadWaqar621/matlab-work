clc
clear all;
close all
XYZ=426
f1=@(x)(-3.8*(x -XYZ)^2 -8.6*(x -XYZ) -500-XYZ);
 a=f1(0);
 f2=@(x)(-3.8*(x -XYZ)^2 -8.6*(x -XYZ) -800-XYZ);
 b=f2(0);
c =426;
loop_limit=20;
itera_trapz = [zeros(1,loop_limit)];
itera_simp = [zeros(1,loop_limit)];
itera_rect = [zeros(1,loop_limit)];

for i = 1:loop_limit   
    med = (b-a)/i;
    rect_sum = 0;
    for j = 1:i
        A = a + j*(med)-(med/2); 
        B = sqrt(((A^2)-(c^2)))/A;
        rect_sum = rect_sum + B*med;      
    end
    itera_rect(i) = rect_sum;
    med = (b-a)/(i-1);
    trapz_sum = 0;
    for j = 1:i
        A = a + ((j-1)*med); 
         B= sqrt(((A^2)-(c^2)))/A;
        if (j == 0)||(j== i)
            coeff = 0.5;
        else
            coeff = 1;
        end
    trapz_sum = trapz_sum + (coeff*B*med);
    end
    itera_trapz(i) = trapz_sum;
    
 
    simp_sum = 0;
    for r = 1:i
         X = a + ((r-1)*med); 
         Y = sqrt(((X^2)-(c^2)))/X;
         if (mod(r,2) == 0)
            coeff = 4;
         else
            coeff = 2;
         end
         if (r == 0)||(r == i)
            coeff = 1;
         end
    simp_sum = simp_sum + (coeff*Y*med*(1/3));
    end
    itera_simp(i) = simp_sum;
end

plot(itera_rect)
title('Plot Errors with Iteration ');
xlabel('===>loop_limit');
ylabel ('====>Errors');
grid on;
hold on;
plot(itera_trapz);
hold on;
plot(itera_simp);
hold on
legend('Rectangle','Trap','Simp');

