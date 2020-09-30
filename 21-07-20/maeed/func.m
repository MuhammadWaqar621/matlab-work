clc
clear 
close 
y=@(x)(x.^4 + (x-3).^2)-(10*x.*sin(2*x));
fzero(y,0.6)