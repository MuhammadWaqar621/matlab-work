function [root, iter] = bracket_efg(funcation_, L_Lim, U_Lim, it_max, tolr, Stop_operation, bracket_method)
if( bracket_method==1)
    [root, iter] = BisectionMethod(funcation_, L_Lim, U_Lim, it_max, tolr, Stop_operation);
elseif(bracket_method==2)
    [root, iter] = Regula_falsiMethod(funcation_, L_Lim, U_Lim, it_max, tolr, Stop_operation);
end
    function [root, iter] = BisectionMethod(funcation_, L_Lim, U_Lim, n, tolr, Stop_operation)
        
        data = [L_Lim,U_Lim];
        
        iter = 1;
        % Check that neither endpoint is a root
        if (funcation_(L_Lim) == 0)
            root = L_Lim;
            return
        elseif (funcation_(U_Lim) == 0)
            root = U_Lim;
            return
        end
        
        for i = 1:n
            nxt=L_Lim+(U_Lim-L_Lim)/2;
            data = [data,nxt];
            if funcation_(nxt) == 0 || (Stop_operation == 1 && abs(U_Lim-L_Lim) < tolr)
                if funcation_(data(1))*funcation_(data(2)) > 0  
                    fprintf('there is a double root at %f\n', nxt)
                end
                root = nxt;
                iter = i;
                fprintf('root found at x = %f after %i iterations\n', root, iter);
                return
            elseif (funcation_(nxt)*funcation_(L_Lim)>0)
                L_Lim = nxt;
            else
                U_Lim = nxt;
            end
        end
        
        
        if Stop_operation == 2 && funcation_(nxt) < tolr
            if funcation_(data(1))*funcation_(data(2)) > 0
                fprintf('there is a double root at %f\n', nxt)
            end
            root = nxt;
            iter = i;
            fprintf('root found at x = %f\n', root);
            return;
        else
            % if no root is found
            root = nxt;
            iter = i;
            disp('the method did not converge');
        end
        
    end

    function [root, iter] = Regula_falsiMethod(funcation_, L_Lim, U_Lim, n, tolr, Stop_operation)
        
        iter = 1;
        data = [L_Lim U_Lim];
        % Check that neither endpoint is a root
        if (funcation_(L_Lim) == 0)
            root = L_Lim;
            return
        elseif (funcation_(U_Lim) == 0)
            root = U_Lim;
            return
        end
        
        for i=1:n
            nxt = U_Lim - funcation_(U_Lim)*((U_Lim - L_Lim)/(funcation_(U_Lim)-funcation_(L_Lim)));
            data = [data nxt];
            if funcation_(nxt) == 0 || (Stop_operation == 1 && abs(U_Lim-L_Lim) < tolr)
                if funcation_(data(1))*funcation_(data(2)) > 0
                    fprintf('there is a double root at %f\n', nxt)
                end
                root = nxt;
                iter = i;
                fprintf('root found at x = %f after %i iterations\n', root, iter);
                return
            elseif funcation_(L_Lim)*funcation_(nxt) > 0
                L_Lim = nxt;
            else
                U_Lim = nxt;
            end
        end
        
        if Stop_operation == 2 && funcation_(nxt) < tolr
            if funcation_(data(1))*funcation_(data(2)) > 0
                fprintf('there is a double root at %f\n', nxt)     % double root check
            end
            root = nxt;
            iter = i;
            fprintf('root found at x = %f\n', root);
            return;
        else
            % if no root is found
            root = nxt;
            iter = i;
            disp('the method did not converge');
        end
    end
end