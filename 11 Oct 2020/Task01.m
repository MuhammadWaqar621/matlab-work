
function [x,v]=Task01(x0,v0,k,m,T,N)
x=[x0];
v=[v0];
time=linspace(0,T,N);
t=time(2)-time(1);
for i=2:length(time)
    v_Temp=v(i-1)-t*(k/m)*x(i-1);
    v=[v v_Temp];
    x=[x x(i-1)+t*v_Temp];
end 
end 