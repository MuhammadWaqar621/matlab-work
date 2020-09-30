clc
clear 
close 
x=linspace(1,10,10);
sum_sqrx=zeros(1,length(x));
for i=1:length(x)
    sum_sqrx(i)=sum_sqrx(i)+x(i)^2;
end 
plot(sum_sqrx,x)
xlabel('square of x')
ylabel('x')
grid on