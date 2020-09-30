clc
clear 
close all
% time 
t = 0:0.001:7;
%Signal 1
s1 = 3 * sin((2*pi*50*t) - (pi/2));
% plot signnal 
subplot(3,1,1);
plot(t,s1);
% limit the axis 
xlim([0 7])
ylim([-2 5])
% assign label and title
xlabel('x');
ylabel('y');
title('Signal 1');

%Signal 2
s2 = 4 * sin((40*pi*t) + (pi/3));
subplot(3,1,2);
plot(t,s2);
xlim([0 7])
ylim([-2 5])
xlabel('x');
ylabel('y');
title('Signal 2');

%Signal 3
s3 = 6 * sin((2*pi*(1/0.05)*t) - pi);
subplot(3,1,3);
plot(t,s3);
xlim([0 7])
ylim([-2 5])
xlabel('x');
ylabel('y');
title('Signal 3');