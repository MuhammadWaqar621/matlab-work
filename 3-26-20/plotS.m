function plotS(n)
i=0.05;
P=10^4;
Y=1:n;
S=P*(1+i).^Y;
plot(Y,S,'r-*')
xlabel('Year')
ylabel('Lump Sum S ')
title('Plot of S for year 1 through n')
end 
