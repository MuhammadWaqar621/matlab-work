clc; clear;
close all
signal = csvread('Data.csv');
signal=signal*1000;
n=length (signal);
% 1. What is the first index of i in the for-loop? Is it 1? If not, then why?
% 2. What is the last index of i in the for-loop? Is it n?
% 3. What is the size of the slope array? Is it the same as that of signal?
% 1)
% % i=2 because we use looop and in loop we need i-1, so start index is 1 for acces value 
% % 2)
% yes,n is the last index of loop...and first value is 0
% 3)
% no, slope is shorter n-1
t=1;
for i=2:n
    slope(i-1)=(signal(i)-signal(i-1))/2;
end
% Anamoly detection using slopes
for i = 1:n-1
%     we already compute sloop and use it 
%     sloop(i)=sloop(i)
    if (slope(i)<=150)
%          disp(slope(i))
         new_signal(i) = signal(i+1);
    end 
end 
% Determine the length of new_signal using the length() function.
n_clean = length(new_signal);
disp(['length of signal is: ',num2str(n)]) 
disp(['length of slope: ',num2str(length(slope))]) 
disp(['length of new clear signal is: ',num2str(n_clean)]) 

for i=1:n
    if i == 1
        moving_avg(i) = (signal(i)+signal(i+1))/2;
    elseif i == n
        moving_avg(i) = (signal(i-1)+signal(i))/2;
    else
        moving_avg(i) = (signal(i-1)+signal(i)+signal(i+1))/3;
    end
end

figure()
x =1:n;
plot(x,signal,'b--'); % blue dot
hold on;
plot(x(1:n_clean),new_signal,'k'); % black line
plot(x,moving_avg,'r-+');
legend('signal','new_ signal','moving_ avg')
xlabel('x')
grid 
ylabel('signal')
title('HW06_ 1')