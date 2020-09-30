function [C,X,Y] = cheby(f,n,a,b)
if nargin==2 
    a=-1; 
    b=1; 
end
d = pi/(2*n+2);
C = zeros(1,n+1);
for k=1:n+1,
  X(k) = cos((2*k-1)*d);
end
X = (b-a)*X/2+(a+b)/2;
x = X;
Y = eval(f);
for k = 1:n+1,
  z = (2*k-1)*d;
  for j = 1:n+1,
    C(j) = C(j) + Y(k)*cos((j-1)*z);
  end
end
C = 2*C/(n+1);
C(1) = C(1)/2;
plot(X,Y)
title(['chebyshev at node:',num2str(n)])
hold on 
plot(X,C,'rO')
end 