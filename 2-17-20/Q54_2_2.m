clc
clear all 
close all
n=100;
a(1)=0;
a(2)=1;
for i=1:n-2;
    a(i+2)=a(i+1)+a(i);
end
for i=1:n-1;
    ratio(i)=a(i+1)/a(i);
end 
zf(1) = figure(1);clf 
za(1) = axes; 
zp(1) = semilogy(a);grid
xlabel('n')
ylabel('fib')
title('fibno number ')
set(za(1),'position',[.1 .6 .4 .31])
za(2) = axes; 
zp(2) = plot(ratio);grid 
xlabel('n')
ylabel('fib ratio')
title('fibno number ratio ')
set(za(2),'position',[.6 .6 .35 .31])
limt=10000;
prime_=primes(limt);
za(1) = axes; 
zp(1) = semilogy(prime_);grid
xlabel('n')
ylabel('primes till 10000')
title('primes')
set(za(1),'position',[.1 .18 .35 .31])
for i=1:length(prime_)-1;
    ratio(i)=prime_(i+1)/prime_(i);
end
za(2) = axes; 
zp(2) = plot(ratio);grid 
xlabel('n')
ylabel('prime ratio')
title('prime ratio ')
set(za(2),'position',[.6 .18 .35 .31])