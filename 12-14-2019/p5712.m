clear all
clc
close all
% Part 1
x1 = [.01:.1:100]';
m = 2;
b = [-1 0 1];
y = m*(x1*[1 1 1]) + (ones(length(x1),1)*b);
% zf(1) = figure(1);clf
% za(1) = axes
subplot(2,2,1)
plot(x1,y);
title('Line Plot')
xlabel('x')
ylabel('Line')
% set(za(1),'position',[.1 .6 .29 .29])

% za(2) = axes
subplot(2,2,2)
semilogx(x1,y);
title('Semilogx')
xlabel('x')
ylabel('Semilogx')
% set(za(2),'position',[.6 .6 .29 .29])

% za(3) = axes
subplot(2,2,3)
semilogy(x1,y);
title('Semilogy')
xlabel('x')
ylabel('Semilogy')
% set(za(3),'position',[.1 .18 .29 .29])

% za(4) = axes
subplot(2,2,4)
loglog(x1,y);
title('Loglog')
xlabel('x')
ylabel('Loglog')
% set(za(4),'position',[.6 .18 .29 .29])

% 
% ss = ['p5712_1'];
% figsize = [5 3.5];
% set(zf(1),'papersize',figsize)
% set(zf(1),'paperposition',[0 0 figsize]);
% print(zf(1),'-dpng','-r300','-painters',ss)

%Part2
y=exp(1:100);
y1=log10(1:100);
zf(2) = figure(2);clf
za(1) = axes;
semilogy(y,'o-','Color',[0 0 0])
title('Semilogy of Exponential')
ylabel('Semilogy')
set(za(1),'position',[0.1 0.6 0.8 0.3])

za(2)=axes;
semilogx(y1,'o-','Color',[0 0 0])
title('Semilogx of Log ')
ylabel('Semilogx')
set(za(2),'position',[0.1 0.1 0.8 .3])

ss = ['p5712_2'];
figsize = [5 3.5];
set(zf(2),'papersize',figsize)
set(zf(2),'paperposition',[0 0 figsize]);
print(zf(2),'-dpng','-r300','-painters',ss)

