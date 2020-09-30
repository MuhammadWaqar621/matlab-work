clc
clear all
close all
warning off
x=linspace(-10,10,100);
% compute the function values
part_a=-exp(-(x-0.5).^2) .* log(1+x);
part_b=-exp(-x).* log(1+x);
unitstep = x>=0;
part_c = (exp(-x).*sin(2*x)).*unitstep;
part_d=exp(-x).*(x.^2 - 3*x);
% plot all these function in seperate figure 
figure 
plot(x,part_a,'black')
xlabel('x')
ylabel('f(x)')
title('part 1')
[min_a,r_a]=min(part_a);
hold on 
plot (x(r_a),real(min_a),'r*')
grid on

figure 
plot(x,part_b,'black')
xlabel('x')
ylabel('f(x)')
title('part 2')
[min_b,r_b]=min(part_b);
hold on 
plot (x(r_b),real(min_b),'r*')
grid on

figure 
plot(x,part_c,'black')
xlabel('x')
ylabel('f(x)')
title('part 3')
[min_c,r_c]=min(part_c);
hold on 
plot (x(r_c),min_c,'r*')
grid on

figure 
plot(x,part_d,'black')
xlabel('x')
ylabel('f(x)')
title('part 4')
[min_d,r_d]=min(part_d);
hold on 
plot (x(r_d),min_d,'r*')
grid on

% minimum value of all function 
disp('***********************')
disp('Function 01')
disp('***********************')
disp(['Minimum value is ',num2str(real(min_a)),' at ',num2str(x(r_a))])

disp('***********************')
disp('Function 02')
disp('***********************')
disp(['Minimum value is ',num2str(real(min_b)),' at ',num2str(x(r_b))])
disp('***********************')
disp('Function 03')
disp('***********************')
disp(['Minimum value is ',num2str(real(min_c)),' at ',num2str(x(r_c))])
disp('***********************')
disp('Function 04')
disp('***********************')
disp(['Minimum value is ',num2str(real(min_d)),' at ',num2str(x(r_d))])
