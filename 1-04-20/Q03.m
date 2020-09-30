
clc
clear all
syms z
F = z/(z^2-0.25*z-0.15);
a=iztrans(F)
poly2sym(a) 
