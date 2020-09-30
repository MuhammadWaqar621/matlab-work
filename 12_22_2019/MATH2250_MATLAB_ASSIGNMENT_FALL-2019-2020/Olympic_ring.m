clc
clear all
close all
[x, y] = createCircle([0, 0], 1);
[x1, y1] = createCircle([2.2, 0], 1);
[x2, y2] = createCircle([4.4, 0], 1); 
[x3, y3] = createCircle([1, -1], 1); 
[x4, y4] = createCircle([3.2, -1], 1); 
xlabel('x'), ylabel('y'), title('Olympic Ring')
axis equal