
function mostIntense(code,amount,duration,intensity)
n=stormIndex(intensity);
fprintf('\nThe intense storm is : \n')
fprintf('\n Code Rainfall (in) Duration (hr) Intensity (in/hr) \n')
fprintf('%4d %9.1f %15.1f %15.1f',code(n),amount(n),duration(n),intensity(n))
    fprintf('\n')
end 