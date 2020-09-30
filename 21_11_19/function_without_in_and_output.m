function function_without_in_and_output()
clc
clear all
close all
fprintf('Angle:\n')
angle=[-pi:pi/100:pi]
fprintf('Sin Value :\n')
sin_=sin(angle)
plot(angle,sin_)
grid on 
xlabel('angle')
ylabel('sin(angle)')
title('sin Function')
legend('sin Output')
end 