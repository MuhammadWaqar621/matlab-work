close 
clc
clear 
t=[0:pi/10:pi];
x=sin(t);
y=cos(2*t);
plot(x,y,'-O','LineWidth',2,'color','r','MarkerSize',6,'MarkerEdgeColor','b','MarkerFaceColor','b')
xlabel('Sin(x)');
ylabel('Cos(2x)');