clc 
clear all
close all
% A)
% graphical method 
syms y
Q=20;
g=9.8;
Ac=3*y + y^2/2;
B=3+y;
graph_method=1 - ((Q^2)/(g*Ac^3))*B;
graph_method=solve (graph_method,y);
Ans_A=real(vpa(graph_method));
Ans_A=Ans_A(Ans_A>=0)


% B)
% using bisection 
error=1;
del=0.25;

xl=0.5;
xu=2.5;
xr=(xl+xu)/2;
Ac=3*xl + xl^2/2;
B=3+xl;
fl=1 - ((Q^2)/(g*Ac^3))*B;
while(error>0)
    Ac=3*xu + xu^2/2;
    B=3+xu;
    fu=1 - ((Q^2)/(g*Ac^3))*B;
    Ac=3*xr + xr^2/2;
    B=3+xr;
    fr=1 - ((Q^2)/(g*Ac^3))*B;
    xl=1.5;
    Ac=3*xl + xl^2/2;
    B=3+xl;
    fl2=1 - ((Q^2)/(g*Ac^3))*B;
    f=fl2*fl;

    xr2=(xl+xu)/2;
    
    error=abs((xr2-xu)/2)*100;
    xu=xu-del;
end 
bisection_root=xr2

% C)
% false position method 
x0=0.5;
x1=2.5;
tol=0.01;
f=@(x) 1 - ((Q^2)/(g*(3*x + x^2/2)^3))*(3+x);
while (1)
    x2=x1 - (f(x1)*(x1-x0)/(f(x1)-f(x0)));
    c=f(x2);
    abs_c=abs(c);
    if abs_c<tol
        break 
    end 
    if f(x0)*c<0
        x1=x2;
    else
        x0=x2;
    end 
end 
fals_pos_root=x2