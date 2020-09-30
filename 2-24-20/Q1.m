clc
clear all
% a
syms x

f=@(x)5*x^4 -3*x^3+4*x^2 +8*x-3;
diff_f=@(x)20*x^3 - 9*x^2 + 8*x + 8;
x=.7;
iter=[];
exect=0.3264;
err=[];
for i=1:3
    iter=[iter (x-(f(x)/diff_f(x)))];
    x=iter(i);
    err= [err abs((exect-x)/x)*100];
end 
iter
err

% b
x=0.7;
x1=0.4;
f1=@(x1)5*x1^4 -3*x1^3+4*x1^2 +8*x1-3;
second_err=[];
second_iter=[];
for i=1:3
    second_iter=[second_iter x- (f(x)*(x-x1))/(f(x)-f(x1))];
    x=second_iter(i);
    second_err= [second_err abs((exect-x)/x)*100];
end 
second_iter
second_err

