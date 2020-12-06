function pos = pos_train(speed, time)
% speed - The given speed of the train in miles/hour
% time - The time at which the speed is to be calculated
pos = (-350 + speed*5280/3600 * time);
end
