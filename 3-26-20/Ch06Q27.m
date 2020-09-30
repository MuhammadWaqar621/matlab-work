
clc
clear all
[code,amount,duration,intensity]=getStormData;
% % Display the data in the vector of structures stormData 
fprintf('\nStorm data for the Podunk River:\n') 
displayStormData(code,amount,duration,intensity) 
% Calculate the average storm intensity and display 
fprintf('\nAverage storm intensity: %.2f (in/hr)\n',... 
    avgStormIntensity(intensity) ) 
% Display all the information on the most intense storm 
mostIntense(code,amount,duration,intensity)
