clc
clear all
close all
theta=-90;
t=[0:0.01:1];
f=1;
x0=1;
for i=1:6
    x= x0 * cos(2*pi*f*t + theta) ;
    subplot(3,3,i)
    plot(t,x)
    xlabel('t')
    ylabel('x')
    title(['x0=',num2str(x0),', f=',num2str(f),', theta=',num2str(theta)])
    f=f+2;
    x0=1/f;
    if (i==1)
        x1=x;
    elseif (i==2)
        x2=x;
    elseif (i==3)
        x3=x;
    elseif (i==4)
        x4=x;
    elseif (i==5)
        x5=x;
    elseif(i==6)
        x6=x;
    end
end 

subplot(3,3,7)
plot(t,x1+x2)
xlabel('t')
ylabel('x')
title('add first two signal')

subplot(3,3,8)
plot(t,x1+x2+x3+x4)
xlabel('t')
ylabel('x')
title('add first four signal ')
subplot(3,3,9)
plot(t,x1+x2+x3+x4+x5+x6)
xlabel('t')
ylabel('x')
title('addition of all six signal ')

figure(2)
subplot(2,1,1)
plot(abs(fft(x1+x2+x3+x4+x5+x6)))
title('magnitude responce')
subplot(2,1,2)
plot(angle(fft(x1+x2+x3+x4+x5+x6)))
title('pahse responce')


