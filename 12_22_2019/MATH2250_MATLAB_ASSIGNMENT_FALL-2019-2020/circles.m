close all
clc 
clear all
[x, y] = createCircle([0, 0], 1);
[x1, y1] = createCircle([0, 0], 2);
[x2, y2] = createCircle([0, 0], 3); 
[x3, y3] = createCircle([0, 0], 4); 
[x4, y4] = createCircle([0, 0], 5); 
xlabel('x'), ylabel('y'), title('Circles')
axis equal