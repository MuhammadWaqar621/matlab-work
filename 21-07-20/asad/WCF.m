function out=WCF(T,V)
out= 35.7 + 0.6*T - 35.7*V.^0.16 + 0.43*T.*V.^0.16;
end