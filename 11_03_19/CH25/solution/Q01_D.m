clear 
% clear the worksapce 
syms c EbN0 positive 
% declear the variable symbolic 
% calculate the Error instance 
instantBER=0.5*(1-erf(sqrt(c*EbN0)));
% BER fading calculate 
BER_fading=int(instantBER*exp(-c),c,0,inf);
% Simplify the BER 
pretty((BER_fading))