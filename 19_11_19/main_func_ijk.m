clc
clear
function_ = @(x) sin(x) + x;
disp('Given function')
disp(function_)
disp('For Change the function update the line 3 in variable function_.')
intial_value = -2;   
final_value = 1.5;   
% reset the variable and take true input
Max_Iteration= 0;
while Max_Iteration< 1
    Max_Iteration= input('enter the maximum iterations: ');
    if rem(Max_Iteration, 1) ~= 0 || Max_Iteration< 1
        disp('Enter Only integer Number!!');
        Max_Iteration= 0;
    end
end
% reset the variable and take true input
Tolerance = 0;
Max_Tolerance = (final_value-intial_value)/10;
while Tolerance == 0
    Tolerance = input(sprintf('enter tolerance value (max %f):', Max_Tolerance));
    if Tolerance > Max_Tolerance || Tolerance <= 0
        disp('Enter Value Within Range!!');
        Tolerance = 0;
    end
end
% choose stop creteria 
end_point_selection = 0;
while end_point_selection == 0
    disp('Choose stopping criteria: ');
    fprintf('1. tolerance\n2. number of iterations\n');
    end_point_selection = input('Enter value: '); 
    if(end_point_selection<1 || end_point_selection>2)
        disp('Invalid entry!!Enter Valid Number..');
        end_point_selection = 0;
    end
end
% select method
select_bracket = 0;
while select_bracket == 0
    disp('Choose bracketing method: ');
    fprintf('1. Bisection method\n2. Regula_Falsi Method\n');
    select_bracket = input('Enter value: ');
    if(select_bracket<1 || select_bracket>2)
        disp('Invalid entry!!Enter Valid Number..');
        select_bracket = 0;
    end
end
[root, iter] = bracket_ijk(function_, intial_value, final_value, Max_Iteration, Tolerance, end_point_selection, select_bracket);