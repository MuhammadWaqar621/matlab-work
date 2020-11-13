clc
clear all
close all
char=input('enter a character:','s');
x=linspace(-2*pi,2*pi,50);
y=sin(x);
if char=='b'
    plot(x,y,'*','Color','b') 
else
    plot(x,y,'+','Color','k')
end 
grid on 
title('Q01')
xlabel('x')
ylabel ('sin (x)')