close all
clear
clc
year = 1900:10:1990;
t = (year-1900)/100;
P = [76.0,92.0,105.7,122.8,131.7,150.7,179.0,205.0,226.5,248.7];
P = P/100;
fun = @(c,t) (c(1)+c(2)*exp(c(3)*t));
c0 = [1,1,1];
c = lsqcurvefit(fun, c0, t, P);
fprintf('c: [%f,%f,%f]\n', c);
plot(t,P,'ko',t,fun(c,t),'b-');
legend('Data','Fitted Curve');
title('Data and Fitted Curve');
% Prediction for 2000
P_2000 = (c(1)+c(2)*exp(c(3)*(2000-1900)/100))*100;
fprintf('Prediction for 2000: %f\n', P_2000);
fprintf('Exact population for 2000 (internet): 282.2\n');
