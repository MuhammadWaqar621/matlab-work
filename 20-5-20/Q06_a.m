clc;
clear all;
close all;
f=@(x) x*log(x+1); % function
a=0; % lower limit
b=1; % upper limit
n=1;
k=1;
Err(1)=0;
while(n<=1024)
N(k)=10*n;
h=(b-a)/n;% step length
x=a:h:b;
for i=1:length(x)
y(i)=f(x(i));
end
% Trapezoid formula
l=length(x);
Th=((h/2)*((y(1)+y(l))+2*(sum(y)-y(1)-y(l))));
Error=abs(Th-1/4); % error
n=n*2;
Trpa(k)=Th;
Err(k+1)=Error;
Log_err(k)=log2( Err(k)/ Err(k+1));
k=k+1;
end
disp('n Integral value log2(e_(n/2)/e_n) ')
disp('___________________________________________________________')
Log_err(1)=0;
for i=1:k-1
fprintf('%0.5f \t %15e \t %15f \n',N(i),Trpa(i), Log_err(i))
end
loglog(N,Err(1:k-1))
hold on
loglog(N,1./N.^2,'r')
legend('Error','0(h)^2')
title('Comparing with second order')
