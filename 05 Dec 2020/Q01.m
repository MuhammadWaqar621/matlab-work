clc
clear all
close all
% part a
u_car = 28; % miles per hour
u_train = 54; % miles per hour
acc_car = 4; % feet per second squared
res = zeros(11,5); % result matrix of dimesions 11x5
% time, train_pos, car_pos, dist_train_car, car_speed,
t=linspace(0,300,11);
for i=1:11
res(i, 1) = t(i);
res(i, 2) = pos_train(u_train, res(i, 1));
res(i, 3) = pos_car(u_car, acc_car, res(i, 1));
res(i, 4) = sqrt(res(i, 2)^2 + res(i, 3)^2);
res(i, 5) = u_car + acc_car * res(i, 1);
end
display(num2str(res));

% part b 
[short_dist,ind]=min(res(:,4));
disp(['shortest distance between tran and car is ',num2str(short_dist),' at time ', num2str(t(ind)),' sec'])

% part c
syms time
inter = -150 + u_car*5280/3600 * time + (1/2) * acc_car* time * time;
inter=solve(inter,time);
inter=inter(find(inter>0));
time=(sqrt(40591)-154)/15;
train_pos=pos_train(u_train,time);
disp(['car cross the intersection at ',num2str(time),' and train at ',num2str(train_pos)])
% part d
subplot 221
plot(res(:,1),res(:,2),'k--','LineWidth',.2)
xlabel('time')
ylabel('train position')
title('train position')
legend('train position')
subplot 222
plot(res(:,1),res(:,3),'r-','LineWidth',.4)
xlabel('time')
ylabel('car position')
title('car position')
legend('car position')
subplot 223
plot(res(:,1),res(:,4),'b:','LineWidth',.6)
xlabel('time')
ylabel('dist train car')
title('dist train car')
legend('dist train car')
subplot 224
plot(res(:,1),res(:,5),'go','LineWidth',.8)
xlabel('time')
ylabel('car speed')
title('car speed')
legend('car speed')