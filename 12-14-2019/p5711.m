clc
clear
close all
% Semilogy for first 100 fibonacci numbers
x=1:100;
y=[];
for i=1:length(x)
    y=[y fibonacci(i)];
end 

% Ratio of adjacent fibonacci numbers
Ratio=zeros(1,length(y)-1);
for i=1:length(y)-1
    Ratio(i)=y(i+1)/y(i);
end
zf(1) = figure(1);clf
za(1) = axes;
semilogy(x,y,'--')
title('Log Plot of fib. Numbers')
xlabel('--->Number from 1 to 100')
ylabel('--->Log value of Fibonacci Number')
set(za(1),'position',[0.1 0.6 0.8 0.3])

za(2)=axes;
plot(Ratio,'--')
title('Ratio between fibonacci Numbers')
xlabel('--->Number from 1 to 100')
ylabel('--->Ratio value')
set(za(2),'position',[0.1 0.1 0.8 .3])

ss = ['p5711'];
figsize = [5 3.5];
set(zf(1),'papersize',figsize)
set(zf(1),'paperposition',[0 0 figsize]);
print(zf(1),'-dpng','-r300','-painters',ss)
