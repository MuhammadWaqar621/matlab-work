clc
clear all
close all
% Step 1
m = 100;
n = 200;
hold on
% Step 2
for i = 1:100000
    q = 3*rand(1); % Step 3
    if q < 1 % Step 4
        % Step 5
        m = m/2;
        n = n/2;
    elseif q < 2 % Step 6
        % Step 7
        m = m/2;
        n = (300+n)/2;
    else
        % Step 8
        m = (300+m)/2;
        n = (300+n)/2;
    end
    plot(m,n,'.b') % Step 9 & 10
    end % Step 11
hold off % Step 12