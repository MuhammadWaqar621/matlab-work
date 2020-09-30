clc
clear all
close all
warning off 
%For Ts=tau
tau=10;
Ts=tau;
t=-tau/2:Ts:tau/2;
g=heaviside(t+tau/2)-heaviside(t-tau/2);
figure(1)
subplot(2,1,1)
stem(g)
xlabel('n')
ylabel('g(t)')
title('time domain at:Ts=tau')
G=fft(g);
subplot(2,1,2)
stem(G)
xlabel('k')
ylabel('G(f)')
title('frequency domain at:Ts=tau')
%For Ts=tau/2
tau=10;
Ts=tau/2;
t=-tau/2:Ts:tau/2;
g=heaviside(t+tau/2)-heaviside(t-tau/2);
figure(2)
subplot(2,1,1)
stem(g)
title('time domain at:Ts=tau/2')
xlabel('n')
ylabel('g(t)')
G=fft(g);
subplot(2,1,2)
stem(G)
xlabel('k')
ylabel('G(f)')
title('frequency domain at:Ts=tau/2')
%For Ts=tau/4
tau=10;
Ts=tau/4;
t=-tau/2:Ts:tau/2;
g=heaviside(t+tau/2)-heaviside(t-tau/2);
figure(3)
subplot(2,1,1)
stem(g)
xlabel('n')
ylabel('g(t)')
title('time domain at:Ts=tau/4')
G=fft(g);
subplot(2,1,2)
stem(G)
xlabel('k')
ylabel('G(f)')
title('frequency domain at:Ts=tau/4')