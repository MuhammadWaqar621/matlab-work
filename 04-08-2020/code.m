% clear workspace and command window
clc
clear all
% close all figure 
close all
% time range is given 
t=0:1:8;
x=[];
% generate signal for one period 
for i=1:length(t)
    if (t(i)>=0 && t(i)<=3)
        x=[x t(i)^2];
    elseif (t(i)>=3 && t(i)<=5)
        x=[x 3];
    elseif (t(i)>=5 && t(i)<=8)
        x=[x 10-2*t(i)];
    end 
        
end 
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('Original Signal')
% make signal period for 4 times 
X=repmat(x,[1 4]);
% plot perodic signal
figure
subplot(311)
plot(0:35,X)
xlabel('t')
ylabel('x(t)')
title('Perodic Signal ')
% take Complex Exponential Fourier Series 
T0 = 9;
wo = 2*pi/T0;
y =[];
for n = 9:17   
  fun=@(z) (X(n)*exp(-1j*n*wo*z));
  y = [y (integral(fun,0,8))];
end
subplot 312
plot(abs(y))
xlabel('t')
ylabel('Magnitude')
title('Magnitude of FS from 9 to 17')
subplot 313
plot(angle(y))
xlabel('t')
ylabel('Phase')
title('Phase of FS from 9 to 17')
Z=[];
%Trigonometric Fourier Series 
for i=13:27
    a0=X(13);
    Z=[Z a0+sum((j*cos(t*wo*i))/X(i)/2+(X(i)/2)*sin(t*wo*i))];
end 
figure
subplot(311)
plot(0:35,X)
xlabel('t')
ylabel('x(t)')
title('Perodic Signal')
subplot 312
plot(abs(Z))
xlabel('t')
ylabel('Magnitude')
title('Magnitude of FS from 13 to 27')
subplot 313
plot(angle(Z))
xlabel('t')
ylabel('Phase')
title('Phase of FS from 13 to 27')

