clc;
clear all;
close all;

% define the range of frequencies
w = 0:0.01:70;

% define the transfer function H(w) here
H = 2./(400-w.^2+1j*w);


% plot the magnitude vs frequency on linear axes
figure;
plot(w,abs(H),'linewidth',2);grid on;
xlabel('frequency rad/sec');
ylabel('|H(w)|');
title(' magnitude response');


% plot the magnitude vs frequency on log axes
figure;
semilogx(w,abs(H),'linewidth',2);grid on;
xlabel('frequency rad/sec');
ylabel('|H(w)|');
title('magnitude response');

% plot the magnitude in dB vs frequency on log axes
figure;
semilogx(w,20*log10(abs(H)),'linewidth',2);grid on;
xlabel('frequency rad/sec');
ylabel('|H(w)| dB');
title('magnitude response');


% plot the phase vs frequency on linear axes
figure;
plot(w,angle(H)*57.3,'linewidth',2);grid on;
xlabel('frequency rad/sec');
ylabel('degrees');
title('phase response');

% plot the phase vs frequency on log axes
figure;
semilogx(w,angle(H)*57.3,'linewidth',2);grid on;
xlabel('frequency rad/sec');
ylabel('degrees');
title('phase response');