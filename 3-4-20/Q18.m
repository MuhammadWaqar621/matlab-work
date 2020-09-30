clc
clear all
% Q18
x=menu('Select Depertment?', 'Civil Engineering', ....
    'Chemical Engineering','Computer Engineering',....
    'Electrical Engineering','Mechanical Engineering');
switch x
    case 1
        disp('minimum credits required is 130')
    case 2
        disp('minimum credits required is 130')
    case 3
        disp('minimum credits required is 122')
    case 4
        disp('minimum credits required is 126.5')
    case 5
        disp('minimum credits required is 129')
end 
