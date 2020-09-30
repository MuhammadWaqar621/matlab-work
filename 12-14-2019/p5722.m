clc
clear all
close all
x=1:100;
y=[];
for i=1:length(x)
    y=[y fibonacci(i)];
end 
Ratio=zeros(1,length(y)-1);
for i=1:length(y)-1
    Ratio(i)=y(i+1)/y(i);
end
zf(1) = figure(1);clf
za(1) = axes;
semilogy(y,'o')
title('first 100 number Fib Plot ')
xlabel('x')
ylabel('Fibnoacci Number ')
set(za(1),'position',[.1 .6 .29 .29])

za(2)=axes;
plot(Ratio,'o')
title('Ratio of fibonacci Numbers')
set(za(2),'position',[.6 .6 .29 .29])
xlabel('x')
ylabel('ratio')
P=primes(104729); %first 10000 prime numbers
Ratio1=zeros(1,length(P)-1);
for i=1:length(P)-1
    Ratio1(i)=P(i+1)/P(i)-1;
end
za(3) = axes;
semilogy(P,'o');
title('1 to 10000 Primes Number')
xlabel('x')
ylabel('Primes Number ')
set(za(3),'position',[.1 .18 .29 .29])

za(4) = axes;
plot(Ratio1,'o');
title('Ratio of Primes Number ')
xlabel('x')
ylabel('ratio')
set(za(4),'position',[.6 .18 .29 .29])

ss = ['p5722'];
figsize = [5 3.5];
set(zf(1),'papersize',figsize)
set(zf(1),'paperposition',[0 0 figsize]);
print(zf(1),'-dpng','-r300','-painters',ss)
