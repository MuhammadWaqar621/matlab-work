clc
clear all
% Q01
disp('Underweight range is less than and equal 18.5')
disp('Normal range is between 18.5-25')
disp('Overweight range between 25-30')
disp('Obese range is greater than 30 ')
BMI=input('Enter Body Mass Index:');
if(BMI<=18.5)
    disp('you lie in case of underweight')

elseif (BMI>18.5 && BMI<=25)
   disp('you lie in normal')
elseif (BMI>25 && BMI<=30)
    disp('you are lie in case of Overweight')
 
else 
    disp('you lin in case of Obese')
end 
if(BMI<20 ||BMI>25)
       disp('your reading is associated with higher risk')
end 