clc
clear all
close all
i0=2;
i=[2.0024 2.0047 2.007 2.0094 2.0128 2.0183 2.0308 2.0500 2.075];
f=[200 4000 6000 7500 8000 8500 9000 9500 10000];
d=0.505;
r=d/2;
area=pi*r^2;
stress=f./area;
strain=(i-i0)/i0;

plot(strain,stress,'-ok')