clear all
close all
%value of x=pi/3
x=pi/3;
%true value of sin(x)
t_value=sin(x);
%initializing approximation vector
a_value=0;
%display the headers
fprintf('Iteration\tTrueValue\tEstimate\tRel_Error(%%)\n')
%Loop to approximate the Maxlaurin series
i=1;
while(1)
    a_value=a_value+(-1)^(i+1)*x^(2*i-1)/factorial(2*i-1);
    rel_error=abs(t_value-a_value)/t_value;
    if (rel_error)<0.01/100
        break
    end
    fprintf('\t%1.0f\t\t%1.4f\t\t%1.4f\t\t%1.4f\n',i,t_value,a_value,rel_error*100)
    i=i+1;
end
fprintf('\t%1.0f\t\t%1.4f\t\t%1.4f\t\t%1.4f\n',i,t_value,a_value,rel_error*100)
