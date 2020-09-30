clc
clear all
% Q04
food=input(sprintf('Select one of these food options\n1. pizza\n2. hot dog\n3. hamburger\n'),'s');
% extra point 
switch food
    case 'pizza'
        disp('select pizza')
    case 'hot dog'
        disp('select hot dog ')
    case 'hamburger'
        disp('select hamburger')
    otherwise
        disp('Error: wrong input ')
end 
