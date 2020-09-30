% Exercise 4 : use of functions
function [] = ALHUSAINIExercise4()
% result store in two variable and we have two output and no input 
clc, clear
% clear workspace and command window
code1result = code1(); %call first function 
disp('Function 1: ')
disp(code1result)
code2result = code2();

disp('Function 2: ')
disp(code2result)
end 
%Code 1 subfunction
function result1 = code1()
a = [1:6]; % make vector with 1 to 6 value 
for i = 1:5 % loop for first 5 values of a
    %update a with addition of 2 and with next value
    a(i) = 2 + a(i) + a(i+1);  
end
result1 = a;%updated a assign to output 

end


%Code 2 subfunction
function result2 = code2()
clear all
k = 1; %initialize k with 1 and a(1) with 1
a(1) = 1;
while k <= 5 %unless k less than 6
    k = k + 2;%increment in k by 2
    if k == 3
        %if k become 3 then add in a(k) by 1
        a(k) = a(1) + 1;
    else
        %else assign 1 at k index ....all other value is assign by 0
        %automatically 
        a(k) = 1;
    end
end
result2 = a;
end



