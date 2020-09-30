clc
clear all
H=input('Enter the height:\n');
W=input('Enter the weight:\n');
BMI=703*W/H^2;
BMI=round(BMI, 1);
if BMI<18.4
    str='Underweight';
elseif BMI<24.9
    str='Normal';
elseif BMI<29.9
    str='Overweight';
else
    str='Obese';
end
fprintf('Your BMI value is %s.Which classifies you as %s.\n' , BMI, str)