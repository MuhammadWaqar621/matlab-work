clear
syms c EbN0 
instantBER=0.5*(1-erf(sqrt(c*EbN0)));
BER_fading=int(instantBER*exp(-c),c,0,inf);
pretty((BER_fading))
