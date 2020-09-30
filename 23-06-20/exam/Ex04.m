clc;
clear all;
% Malab program to calculate Petrol Consumption
%get the number of kilometers travelled in kilometers
prompt = 'How much distance travelled? (in Kilometers): ';
a = input(prompt);
%now get the amount of fuel ie petrol consumed in litres
prompt = ' How many litres of petrol consumed? : ';
b = input(prompt);
% lets calculate the mileage of the vehicle ie number of kms per ltr
c = a / b;
% now the number of litres required for 100 kms is calculated as,
d = 100 / c ;
% now lets display the output
fprintf('\n')
disp('distance Litres used Km/L L/100km');
mat=[a b c d];
disp(mat)
