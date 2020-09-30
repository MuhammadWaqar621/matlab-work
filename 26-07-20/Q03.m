clc
clear all
close all
% time 
t=0:1:7;
x=[];
% generate signal for one period 
for i=1:length(t)
    if (i>=0 && i<=3)
        x=[x (t(i)/2)+1];
    elseif (i>=3 && i<=5)
        x=[x 3-(t(i))/2];
    else
        x=[x 2];
    end 
        
end 
% make signal period for 2 times 
X=repmat(x,[1 3]);
figure
subplot(311)
plot(X)
xlabel('t')
ylabel('x(t)')
title('Original Signal')
% part 01
T0 = 8;
wo = 2*pi/T0;
y =[];
for n = 7:15   
  fun=@(z) (X(n)*exp(1j*n*wo*z));
  y = [y (integral(fun,0,7))/T0];
end
subplot 312
plot(abs(y))
xlabel('t')
ylabel('Magnitude')
title('Magnitude of FS from 7 to 15')
subplot 313
plot(angle(y))
xlabel('t')
ylabel('Phase')
title('Phase of FS from 7 to 15')
Z=[];
% TFS
for i=11:17
    a0=X(11);
    Z=[Z a0+sum((j*cos(t*wo*i))/X(i)/2+(X(i)/2)*sin(t*wo*i))];
end 
figure
subplot(311)
plot(X)
xlabel('t')
ylabel('x(t)')
title('Original Signal')
subplot 312
plot(abs(Z))
xlabel('t')
ylabel('Magnitude')
title('Magnitude of FS from 11 to 17')
subplot 313
plot(angle(Z))
xlabel('t')
ylabel('Phase')
title('Phase of FS from 11 to 17')
