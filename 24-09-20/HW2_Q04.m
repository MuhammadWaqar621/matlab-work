clc
clear all
close all
a=2;
b=3.5;
deltax=pi/35;
x=0:deltax:pi/2; 
y=b.*exp(-a.*x).*sin(b.*x).*(0.011.*x.^4-0.14.*x.^3+0.075.*x.^2+3.5.*x);
z=y.^2;
format shortG 
w=[x',y',z'] 
p=plot(x,y,x,z);
xlabel('x'); 
ylabel('y,z');
legend('y','z');
p(1).LineWidth=1.4;
p(1).LineStyle='-.';
p(1).Color='red';
p(1).Marker='pentagram';
p(1).MarkerSize=15;
p(1).MarkerEdgeColor='red';
p(1).MarkerFaceColor='white';
p(2).LineWidth=0.5;
p(2).LineStyle='-';
p(2).Color='blue'; 
p(2).Marker='diamond';
p(2).MarkerSize=6; 
p(2).MarkerEdgeColor='black';
p(2).MarkerFaceColor='magenta';
