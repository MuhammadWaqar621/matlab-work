
function [x,v]=Task04(x0,v0,k,m,T,N,beta)
x=[x0];
v=[v0];
time=linspace(0,T,N);
t=time(2)-time(1);
for i=2:length(time)
    v_Temp=v(i-1)-t*(k/m)*x(i-1);
    v=[v v_Temp];
    x=[x (k/m)*(v_Temp+beta*v_Temp^3)];
end 
end 