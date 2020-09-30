function y=Q7(x)
disp(['At x =',num2str(x),' : '])
y=(-.2.*x.^3 + 7*x.^2).*exp(-.3*x);
plot(x,y)
grid on 
xlabel('x')
ylabel('y(x)')
title('Plot the funcation ')
end