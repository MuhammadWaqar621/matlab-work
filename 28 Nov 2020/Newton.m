function [root] = Newton(x0,max_Step)
%% NEWTON Determines root using Newton's method
%% Requires initial value x0 and max_step; returns root.
 % Print header (Each col is 4 space wide)
 fprintf('%s  %s \n', 'step', 'x');

 % Set x = initial x, i.e. x0
 x =x0 ;

 % Run loop for 1 to max_step
 for i=1:max_Step
     % Evaluate fx = x^2 - 3x + 2
     fx = x^2 - 3*x + 2;
     % Evaluate dfx
     dfx = 2*x - 3;

     % Find x_new from x, fx, dfx using the 
     x_new = x - fx/dfx;

     % Update x with x_new
     x =x_new ;

     % Print step number (i) and x.
     % Col1: integer, 4 spaces wide
     % Col2: float, 8 spaces wide with 4 decimal places

     fprintf('%d \t%4.4f\n', i,x);
 end

 root = x;

 fprintf('\n\n');
end
