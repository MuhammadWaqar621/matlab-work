clear
clc
close all
n = 6;
x = linspace(0, 2.5, n+1);
y = sin(x.^2);

t = x(:); y = y(:);
n = length(t) - 1;
h = diff(t);
  
Z = zeros(n);
I = eye(n); E = I(1:n-1,:);
J = I - diag(ones(n-1,1),1);
H = diag(h);
  
AL = [I Z Z Z];
vL = y(1:n);
  
AR = [I H H^2 H^3];
vR = y(2:n+1);
  
A1 = E*[Z J 2*H 3*H^2];
v1 = zeros(n-1,1);
  
A2 = E*[Z Z J 3*H];
v2 = zeros(n-1,1);
  
nakL = [zeros(1,3*n) [1 -1 zeros(1,n-2)]];
nakR = [zeros(1,3*n) [zeros(1,n-2) 1 -1]];
  
A = [AL; AR; A1; A2; nakL; nakR];
v = [vL; vR; v1; v2; 0; 0];
z = A\v;
  
rows = 1:n;
a = z(rows);
b = z(n+rows); 
c = z(2*n+rows); 
d = z(3*n+rows);
S = zeros(size(x));
xx = 0:0.001:2.5;
for k = 1:n
    index = (x>=t(k)) & (x<=t(k+1));
    S(index) = polyval([d(k) c(k) b(k) a(k)], x(index)-t(k));
end 

plot(xx,sin(xx.^2))
hold on
plot(x,y,'o')
hold on
% plot(xx,S(xx))
yy = spline(x,y,xx);
plot(xx,yy)
xlabel('x'), ylabel('y(x)')
title('Cubic Spline Interpolation')
legend('Actual Function', 'Nodes', 'Interpolated Function')