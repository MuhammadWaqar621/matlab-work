function d=privatekey(n,e)
fac=factor(n);
p=fac(1);
q=fac(2);
phi=(p-1)*(q-1);
i=1;
r=1;
while r > 0
    k=(phi*i)+1;
    r=rem(k,e);
    i=i+1;
end
d=k/e;

end 
