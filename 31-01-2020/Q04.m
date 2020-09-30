clc
clear all
close all
w = logspace(-1,4,200);
H1=(j.*w)./(j*w.^3 + 12j.*w.^2 + 21j.*w + 10).*(-100);
figure(1)
subplot(2,1,1);
semilogx(w,20*log10(abs(H1)));
xlabel('\omega (rad/sec)')
ylabel('|H(j\omega)|')
title('Bode Plot at jw: Magnitude Response');
grid on 
subplot(2,1,2);
semilogx(w,unwrap(angle(H1))*180/pi);
xlabel('\omega (rad/sec)'); 
ylabel('\angleH(j\omega) (\circ)'); 
title('Bode Plotfor at jw: Phase Response');
grid on

% part02
w2=(w/10 +1)
H2=(j.*w)./(j*w.^3 + 12j.*w.^2 + 21j.*w + 10).*(-100);
figure(2)
subplot(2,1,1);
semilogx(w2,20*log10(abs(H2)));
xlabel('\omega (rad/sec)')
ylabel('|H(j\omega)|')
title('Bode Plot at (jw/10 +1): Magnitude Response');
grid on 
subplot(2,1,2);
semilogx(w2,unwrap(angle(H2))*180/pi);
xlabel('\omega (rad/sec)'); 
ylabel('\angleH(j\omega) (\circ)'); 
title('Bode Plotfor at (jw/10 +1): Phase Response');
grid on

% part03
w3=(w/1+1);
H3=(j.*w)./(j*w.^3 + 12j.*w.^2 + 21j.*w + 10).*(-100);
figure(3)
subplot(2,1,1);
semilogx(w3,20*log10(abs(H3)));
xlabel('\omega (rad/sec)')
ylabel('|H(j\omega)|')
title('Bode Plot at (jw/1+1): Magnitude Response');
grid on 
subplot(2,1,2);
semilogx(w3,unwrap(angle(H3))*180/pi);
xlabel('\omega (rad/sec)'); 
ylabel('\angleH(j\omega) (\circ)'); 
title('Bode Plotfor at (jw/1+1): Phase Response');
grid on


% part04
w4=(w/100+1);
H4=(j.*w)./(j*w.^3 + 12j.*w.^2 + 21j.*w + 10).*(-100);
figure(4)
subplot(2,1,1);
semilogx(w4,20*log10(abs(H4)));
xlabel('\omega (rad/sec)')
ylabel('|H(j\omega)|')
title('Bode Plot at (jw/100+1): Magnitude Response');
grid on 
subplot(2,1,2);
semilogx(w4,unwrap(angle(H4))*180/pi);
xlabel('\omega (rad/sec)'); 
ylabel('\angleH(j\omega) (\circ)'); 
title('Bode Plotfor at (jw/100+1): Phase Response');
grid on
% overall responce
H=H1+H2+H3+H4;
figure(5)
subplot(2,1,1);
semilogx(w,20*log10(abs(H)));
xlabel('\omega (rad/sec)')
ylabel('|H(j\omega)|')
title('Bode Plot Overall: Magnitude Response');
grid on 
subplot(2,1,2);
semilogx(w,unwrap(angle(H))*180/pi);
xlabel('\omega (rad/sec)'); 
ylabel('\angleH(j\omega) (\circ)'); 
title('Bode Plotfor Overall: Phase Response');
grid on