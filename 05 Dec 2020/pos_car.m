function pos = pos_car(speed, acceleration, time)
% speed - The given speed of the car in miles/hour
% acceleration - The acceleration of the car in feet/second^2
% time - The time at which the speed is to be calculated
pos = -150 + speed*5280/3600 * time + (1/2) * acceleration * time * time;
end
