% clear workspace and command window 
clc
clear
% function: you can change function here 
fx = @(x) sin(x) + x;
fprintf('function\n')
disp(fx)
fprintf('We can Change function in line 6.\n')
% interval for bracketing
L_inter = -2;    
U_inter= 1.5;       
max_num_iter = 0;
% repeat untial true number is not enter and same for tol
while(1)
    max_num_iter = input('Enter Maximum Number of Iterations: ');
    if (mod(max_num_iter, 1) ~= 0 || max_num_iter < 1)
        fprintf('Invalid entry!Please Enter Correct Integer!\n');
        max_num_iter = 0;
    else 
        break
    end
end

max_tolerance = (U_inter-L_inter)/10;
while(1)
    tolerance = input(sprintf('enter tolerance value (max %f):', max_tolerance));
    if (tolerance > max_tolerance || tolerance <= 0)
        fprintf('Invalid entry OR value is too large!!\n');
    else 
        break
    end
end
% ask user to choose stopping criteria (accepts only 1 and 2, otherwise gives error)
while(1)
    fprintf('Choose stopping criteria: \n 1. tolerance\n 2. number of iterations\n');
    stop_operation = input('Enter value: ');  
    if stop_operation<=0 || stop_operation >2
        fprintf('Invalid entry!!\n');
    else 
        break
    end
end
% ask user to choose method (accepts only 1 and 2, otherwise gives error)
while(1)
    fprintf('Choose bracketing method \n1. Bisection method\n2. Regula_Falsi Method\n');
    select_bracket_type = input('Enter value: ');
    if select_bracket_type<=0 || select_bracket_type >2
        fprintf('Invalid entry!!\n');
    else 
        break
    end  
end
[root, iteration] = bracket_efg(fx, L_inter, U_inter, max_num_iter, tolerance, stop_operation, select_bracket_type);