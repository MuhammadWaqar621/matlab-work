clc
clear all
close all
warning off
years=[2006 2007 2008 2009 2010 2011 2012 2013];
sales=[384.7 378.8 405.6 408.2 421.8 447.0 469.2 476.2];
% part a
part_a=polyfit(years,sales,2);
disp(['Fit-second degree polynomial coefficient is :',num2str(part_a)])
% part_b
part_b=polyval(part_a,2019);
disp(['Sale in 2019 is $',num2str(part_b)])
% part_c
plot(years,sales,'o',2019,part_b,'o')
xlabel('years')
ylabel('sales')
title('sales in years')
hold on 
grid on
plot([years 2019],[sales part_b])
legend ('data plot','predict plot')
