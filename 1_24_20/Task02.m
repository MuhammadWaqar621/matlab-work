clc 
clear all
t=linspace(0,2);
f=@(t) 9*exp(-t)*sin(2*pi*t)- 3.5;
y=[];
for i=1:length(t)
    y=[y f(t(i))];
end 
plot(t,y)
grid on 
xlabel('time --->')
title('Signal at t values')
ylabel('y--->')
t1=fzero(f,[0,.2])
t2=fzero(f,[0.2,.8])
