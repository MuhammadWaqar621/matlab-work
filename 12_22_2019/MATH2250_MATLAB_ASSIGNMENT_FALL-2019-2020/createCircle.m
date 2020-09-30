function [x, y] = createCircle(center, r)
t = linspace(0, 2*pi, 200);
x = center(1) + r*cos(t);
y = center(2) + r*sin(t);
plot(x,y, 'Linewidth', 3)
xlabel('--->x')
ylabel('--->y')
title('Circle')
hold on 
end