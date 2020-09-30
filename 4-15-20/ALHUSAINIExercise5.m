% Exercise 5 : use of fprintf

function [] = ALHUSAINIExercise5()
clc, clear


% sub function calls:

x = code1();

y = code2();

% calling code3 returns an array output and 
%displays imagesc and surf data
z = code3();

% Output
%fprintf('\n')
fprintf('\nCode1 results for x\n')
fprintf('%4.0f',x)
% fprintf('\n\n')
fprintf('\n\nCode2 results for y\n')
fprintf('%4.0f',y)
% fprintf('\n\n')
fprintf('\n\nCode3 results for z in 3x3 output format\n')
fprintf('%5.1f',z(1),z(2),z(3))
fprintf('\n')
fprintf('%5.1f',z(4),z(5),z(6))
fprintf('\n')
fprintf('%5.1f',z(7),z(8),z(9))
fprintf('\n\n')
% or output this way in columns
fprintf('   x     y     z  \n')
data = [x;y;z];
fprintf('%4.0f %5.0f %6.1f \n', data)
fprintf('\n')

end


%Code 1 subfunction

function result1 = code1()
clc,clear
a = [1:9];
for i = 1:5 % loop for first 5 values of a
    %update a with addition of 2 and with next value
    a(i) = 2 + a(i) + a(i+1);  
end
result1 = a;%updated a assign to output
end

%Code 2 subfunction

function result2 = code2()
clc,clear
k = 1;
a(1) = 1;
while k <= 8
    k = k + 2;
    if k == 3 %increment by 2 if k is 3
        a(k) = a(1) + 1;
    else
        a(k) = 1; %assign 1 at index k of a
    end
end
result2 = a;
end

%Code 3 subfunction

function result3 = code3()
   %generate 9 element as random between 0 to 1
   result3 = rand(1,9);
   
   figure(1)
   imagesc(rand(8));
   axis equal
   
   figure(2)
   surf(5*rand(8));
   % view arguments: azimuth and elevation
   view(20,20)
   
end