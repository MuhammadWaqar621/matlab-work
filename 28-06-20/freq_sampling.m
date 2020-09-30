clc
clear all
close all
warning off 
%For fs=1/(4*tau)
tau=10;
fs=1/(4*tau);
f=fs:fs:5;
G=tau*(sin(pi*f*tau)./(pi*f*tau));
figure(1)
subplot(2,1,1)
stem(G)
xlabel('k')
ylabel('G(f)')
title('freq domin at:fs=1/4tau')
g=ifft(G);
subplot(2,1,2)
stem(g)
xlabel('n')
ylabel('g(t)')
title('time domin at:fs=1/4tau')
%For fs=1/(2*tau)
tau=10;
fs=1/(2*tau);
f=fs:fs:5;
G=tau*(sin(pi*f*tau)./(pi*f*tau));
figure(2)
subplot(2,1,1)
stem(G)
xlabel('k')
ylabel('G(f)')
title('freq domin at:fs=1/2tau')
g=ifft(G);
subplot(2,1,2)
stem(g)
xlabel('n')
ylabel('g(t)')
title('time domin at:fs=1/2tau')
%For fs=1/(tau)
tau=10;
fs=1/(tau);
f=fs:fs:5;
G=tau*(sin(pi*f*tau)./(pi*f*tau));
figure(3)
subplot(2,1,1)
stem(G)
xlabel('k')
ylabel('G(f)')
title('freq domin at:fs=1/tau')
g=ifft(G);
subplot(2,1,2)
stem(g)
xlabel('n')
ylabel('g(t)')
title('time domin at:fs=1/tau')