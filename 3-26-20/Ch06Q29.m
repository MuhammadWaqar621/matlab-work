
clc
clear all
close all
choice = -1;
while choice ~= 4
    % Call a function to display a menu of choices.
    choice = pioptions;
    switch choice
        case 1
        machin
        case 2
        leib1
        case 3
        leib2
    end
end