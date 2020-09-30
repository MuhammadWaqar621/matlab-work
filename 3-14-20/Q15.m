clc
clear all 
close all
% a
f=0:20:200; 
[K,R,F]=temperature_conversions(f,0,0); 
table1=[f' K'] 
% b
cr=linspace(0,100,25); 
[K,R,F]=temperature_conversions(0,cr,0); 
table2=[cr' R'] 
% c
cf=0:10:100; 
[K,R,F]=temperature_conversions(0,0,cf); 
table3=[cf' F']