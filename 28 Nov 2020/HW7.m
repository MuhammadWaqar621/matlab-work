clc; clear;
max_step = 5;
x0 = 1; % set starting value to 1
disp(['x0=',num2str(x0),' and max_step=',num2str(max_step)])
root = Newton(x0,max_step);

% Try again, this time with 2
x0 = 3;
disp(['x0=',num2str(x0),' and max_step=',num2str(max_step)])
root = Newton(x0,max_step);
% when we use x0=2 we get the root is 2 in all step ecause exect root is 2

% And try again, this time with x0 = 300. Did you get the
% result in 5 steps? If not, then what different
% can you do to get either 1 or 2 as the estimated root?
x0 = 300;
% max_step = ??;
disp(['x0=',num2str(x0),' and max_step=',num2str(max_step)])
root=Newton(x0,max_step);

% no by using 5 step we not get the result
% initial value is large and it reduce in every step almost half 


x0 = 300;
max_step = 15;
disp(['x0=',num2str(x0),' and max_step=',num2str(max_step)])
root=Newton(x0,max_step);