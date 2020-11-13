clc
clear all
close all
k=5;
m=.5;
T=10;
N=[100 1000];
v0=.1;
x0=1;
for i=1:length(N)
    [x,v]=Task01(x0,v0,k,m,T,N(i));
    time=linspace(0,T,N(i));
    t=time(2)-time(1);
    Engergy=(1/2)*m*(v).^2  + (1/2)*k*(x).^2 ;
    mod_E=(1/2)*(m*v.^2 +k*x.^2 - t*k*x.*v);
    time=linspace(0,T,N(i));
    figure(i) 
    plot(time,Engergy)
    hold on 
    plot(time,mod_E)
    grid 
    legend('Energy','modify Energy')
    xlabel('time')
    ylabel('energy')
    title(['N=',num2str(N(i))])
end 