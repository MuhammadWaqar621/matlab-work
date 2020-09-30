clc
clear 
data=[5 5 406;
    5 10 3250;
    5 15 10970;
    5 20 26000;
    10 5 1625;
    10 10 13000;
    10 15 43875;
    10 20 104005;
    20 5 6500;
    20 10 52000;
    20 15 175500;
    20 20 41600];
Blade_diameter=data(:,1);
wind_velocity=data(:,2);
Elect_gen=data(:,3);
stem3(Blade_diameter,wind_velocity,Elect_gen)
xlabel('Blade Diameter(ft)')
ylabel('Wind velocity(mph)')
zlabel('Electricity Generated (KW-hr/yr)')
title('Wind turbine data')
