function [root_A]=my_sqrt(x,e)
A=5;
x(1)=x;
i=1;
y=zeros;
while (1)
    y(i)=x(i)^2/A;
    x(i+1)=(x(i)/8)*(15-y(i)*(10-(3*y(i))));
    if abs(x(i+1)-x(i))<=e
        break
    end
    i=i+1;
end 
root_A=x(i+1);
end 
