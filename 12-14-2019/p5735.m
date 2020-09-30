clear
clc
close all

load('unemployment_data.mat')
unemployment= cell2mat(data(:,2));
gdp=cell2mat(data(:,3));
inflation=cell2mat(data(:,4));
year=cell2mat(data(:,1));
zf(1)=figure; clf
plot(year,unemployment,'--',year,gdp,':',year,inflation,'*-')
xlabel('year')
legend('Unemployment Rate','GDP Growth Rate','Inflation Rate')
grid on 
ylabel('Data')
ss = ['p5735'];
figsize = [5 3.5];
set(zf(1),'papersize',figsize)
set(zf(1),'paperposition',[0 0 figsize]);
print(zf(1),'-dpng','-r300','-painters',ss)
