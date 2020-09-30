
function displayStormData(code,amount,duration,intensity)
fprintf('\n Code Rainfall (in) Duration (hr) Intensity (in)/hr \n');
L=length(code);
for i=1:L
    fprintf('%4d %9.1f %15.1f %15.1f',code(i),amount(i),duration(i),intensity(i))
    fprintf('\n')
end 
end 