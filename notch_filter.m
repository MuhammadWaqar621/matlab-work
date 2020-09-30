clear all
clc
close all
r=0.9; 
wn=pi/4;
b=[1 -2*r*cos(wn) r^2];
a=b(end:-1:1);
num=(b+a)/2;
den=a;
[w,h]=freqz(num,den);
plot(h/pi,abs(w))
title(['Magnitude Responce at Wn=pi/ ',num2str(r),' and r=',num2str(r)])
xlabel('Freq/rad')
ylabel('Magnitude')
grid on
figure(2)

plot(h/pi,angle(w)')
grid on
title(['phase responce at Wn=pi/',num2str(r),' and r=',num2str(r)])
xlabel('Freq/rad')
ylabel('Phase Radian')

