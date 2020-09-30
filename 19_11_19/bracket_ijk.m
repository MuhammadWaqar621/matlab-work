function [root, iter] = bracket_ijk(func, x1,x2, iter_max, Tol, stop, b_type)
% inputs variable are 
% func = function
% x1 = lower limit
% x2 = upper limit
% iter_max = upper limit on iterations
% Tol = max tolerance in answer
% stop = stopping criteria
% b_type = choice of bracketing method

% outputs variable are
% root: either root or the last iteration (if not root, error msg is displayed)
% iter: number of iteration taken

switch b_type
    case 1
        [root, iter] = bisection(func, x1,x2, iter_max, Tol, stop);
    case 2
        [root, iter] = regula_falsi(func, x1,x2, iter_max, Tol, stop);
end


    function [root, iter] = bisection(func, x1,x2, iter_max, Tol, stop)
        
        data = [x1 x2];
        
        iter = 1;
        % Check that neither endpoint is a root
        if (func(x1) == 0)
            root = x1;
            return
        elseif (func(x2) == 0)
            root =x2;
            return
        end
     
        for i = 1:iter_max
           Next_data=x1+(x2-x1)/2;
            data = [data Next_data];
            if func(Next_data) == 0 || (stop == 1 && abs(x2-x1) < Tol)
                if func(data(1))*func(data(2)) > 0    % double root check
                    fprintf('there is a double root at %f\n',Next_data)
                end
                root =Next_data;
                iter = i;
                fprintf('root found at x = %f after %i iterations\n', root, iter);
                return
            elseif (func(Next_data)*func(x1)>0)
                x1 =Next_data;
            else
               x2 =Next_data;
            end
        end
        
        
        if stop == 2 && func(Next_data) < Tol
            if func(data(1))*func(data(2)) > 0
                fprintf('there is a double root at %f\n',Next_data)
            end
            root =Next_data;
            iter = i;
            fprintf('root found at x = %f\n', root);
            return;
        else
            % if no root is found
            root =Next_data;
            iter = i;
            disp('the method did not converge');
        end
        
    end

    function [root, iter] = regula_falsi(func, x1,x2, iter_max, Tol, stop)
        
        iter = 1;
        data = [x1 x2];
        % Check that neither endpoint is a root
        if (func(x1) == 0)
            root = x1;
            return
        elseif (func(x2) == 0)
            root =x2;
            return
        end
        
        for i=1:iter_max
           Next_data =x2 - func(x2)*((x2 - x1)/(func(x2)-func(x1)));
            data = [data Next_data];
            if func(Next_data) == 0 || (stop == 1 && abs(x2-x1) < Tol)
                if func(data(1))*func(data(2)) > 0
                    fprintf('there is a double root at %f\n',Next_data)
                end
                root =Next_data;
                iter = i;
                fprintf('root found at x = %f after %i iterations\n', root, iter);
                return
            elseif func(x1)*func(Next_data) > 0
                x1 =Next_data;
            else
               x2 =Next_data;
            end
        end
        
        if stop == 2 && func(Next_data) < Tol
            if func(data(1))*func(data(2)) > 0
                fprintf('there is a double root at %f\n',Next_data)     % double root check
            end
            root =Next_data;
            iter = i;
            fprintf('root found at x = %f\n', root);
            return;
        else
            % if no root is found
            root =Next_data;
            iter = i;
            disp('the method did not converge');
        end
    end

end