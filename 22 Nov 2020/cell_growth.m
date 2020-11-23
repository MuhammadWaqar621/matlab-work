function [y] = cell_growth(varargin)
% [y] = cell_growth(y0, h, xn)
% y0=Initial cell concentration
% h=time step size
% xn=maximum time
% y=A vector of values corresponding to the cell concentration 
%Write your f(x,y) function, where dy/dx=f(x,y), x(x0)=y0.
switch nargin
    case 3
        meu=1e-1;
        kd=1e-6;
        y0=varargin(1);
        h=varargin(2);
        xn=varargin(3);
        
    case 4
        last=cell2mat(varargin(4));
        disp(last)
        meu=last(1);
        kd=last(2);
        y0=varargin(1);
        h=varargin(2);
        xn=varargin(3);
end 
y0=y0{1};
h=h{1};
xn=xn{1};
f=@(x) meu*x-kd*x.^2; 
% initial value of x0
x0=0;
% title of columns
fprintf('\n x        y ');
y=[];
while x0<=xn
%   update value
    y1=y0+h*f(x0);
    x1=x0+h;
    x0=x1;
    y0=y1;  
    %values of x and y
    %print on command window
    fprintf('\n%4d  %4.3f ',x0,y0); 
%   x=[x x0];
%   maintain all value in vector as output demand 
    y=[y y0];
end

end 