clc
clear all
close all
lot=menu('Which lot do you want to park at?', 'Long-Term Lot', 'Short-term Lot');
disp('How long did you park in the lot?'); 
Weeks=input('Weeks:'); 
Days=input('Days:'); 
Hours=input('Hours:'); 
Minutes=input('Minutes:'); 
switch lot 
    case 1 
        bill=LongTermBill(Weeks,Days,Hours,Minutes); 
    case 2 
        bill=ShortTermBill(Weeks,Days,Hours,Minutes); 
end
fprintf('Ticket Number\nTime Stayed:%3d Weeks %2d Days %2d Hours %2d Minutes\nFee: %4d Dollars\n',Weeks,Days,Hours,Minutes,bill); 