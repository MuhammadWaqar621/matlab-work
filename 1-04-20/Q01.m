clc
clear all
% syms n
% fun=n^2
n=1:5;
f = exp(1i*pi/6./n);
fun=poly2sym(f);
fun_con=conj(fun);
real_x=ztrans(real(fun))
imag_x=ztrans(imag(fun))
Fun=ztrans(fun);
Fun_con=ztrans(fun_con);
real_=(Fun + Fun_con )/2
imag_=(Fun - Fun_con )/2
