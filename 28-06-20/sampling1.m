%% Continuous Waveform
fsc = 44100; % Parent sampling frequency/ Meta sampling frequency
tsc = 1/fsc;
t = 0:tsc:1;
f = 10;
x = cos(2*pi*10*t);
plot(t,x,'linewidth',1.5), grid on

%%
%{
    Shannon sampling theorem: fs >= 2*fmax to avoid Aliasing
    Nyquist frequency = 2*fmax
%}

%% Sampling at fs = 50 Sa/s , No Aliasing
fs1 = 50;
ts1 = 1/fs1;
n1 = 0:t(end)*fs1;
xn1 = cos(2*pi*f*n1*ts1);
figure(1)
plot(t,x,'k','linewidth',1.5), grid on
hold on
stem(n1/fs1,xn1,'r','filled')

figure(2)
plot(n1/fs1,xn1,'b','linewidth',1.5), grid on
hold on
stem(n1/fs1,xn1,'r','filled')
title(sprintf('Sample at fs = %g Sa/s, fmax = %g Hz',fs1,f))

figure(3)
plot(t,x,'b','linewidth',1.5), grid on
hold on
stem(n1/fs1,xn1,'r','filled','linewidth',1.5)
plot(n1/fs1,xn1,'m','linewidth',1.5), grid on
legend('Original Continuous Signal','Sampled','Linearly Interpolated Samples')

%% Sampling at fs = 20 Sa/s (Nyquist Frequency), No Aliasing
fs2 = 20;
ts2 = 1/fs2;
n2 = 0:t(end)*fs2;
xn2 = cos(2*pi*f*n2*ts2);
figure(4)
plot(t,x,'k','linewidth',1.5)
hold on
stem(n2/fs2,xn2,'r','filled')
title(sprintf('Sample at fs = %g Sa/s, fmax = %g Hz',fs2,f))

figure(5)
plot(n2/fs2,xn2,'b','linewidth',1.5), grid on
hold on
stem(n2/fs2,xn2,'r','filled')
title(sprintf('Sample at fs = %g Sa/s, fmax = %g Hz',fs2,f))

figure(6)
plot(t,x,'b','linewidth',1.5), grid on
hold on
stem(n2/fs2,xn2,'r','filled','linewidth',1.5)
plot(n2/fs2,xn2,'m','linewidth',1.5), grid on
legend('Original Continuous Signal','Sampled','Linearly Interpolated Samples')

%% Sampling at fs = 15 Sa/s, Aliasing
fs3 = 15;
ts3 = 1/fs3;
n3 = 0:t(end)*fs3;
xn3 = cos(2*pi*f*n3*ts3);

figure(7)
plot(t,x,'k','linewidth',1.5)
hold on
stem(n3/fs3,xn3,'r','filled')
title(sprintf('Sample at fs = %g Sa/s, fmax = %g Hz',fs3,f))

figure(8)
plot(n3/fs3,xn3,'b','linewidth',1.5), grid on
hold on
stem(n3/fs3,xn3,'r','filled')
title(sprintf('Sample at fs = %g Sa/s, fmax = %g Hz',fs3,f))

figure(9)
plot(t,x,'b','linewidth',1.5), grid on
hold on
stem(n3/fs3,xn3,'r','filled','linewidth',1.5)
plot(n3/fs3,xn3,'m','linewidth',1.5), grid on
legend('Original Continuous Signal','Sampled','Linearly Interpolated Samples')


%% Perfect

figure(11)
plot(t,x,'k')
hold on
stem(n3/fs3,xn3,'r','filled','linewidth',1.5)
title(sprintf('Sample at fs = %g Sa/s, fmax = %g Hz',fs3,f))
xn3r = cos(2*pi*abs(f - fs3)*t);
hold on
plot(t,xn3r,'linewidth',1.5)
legend('Original','Sampled','Reconstructed (Aliasing)')