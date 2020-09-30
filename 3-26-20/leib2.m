
function leib2
err = 0.01;
% Loop until the error in the approximation is less than
N=1;
S = 2;
runsum = 0;
difference = 1;
while err < difference
    term = (-1)^S * 4/N;
    temp = runsum;
    runsum = runsum + term;
    difference = abs(temp - runsum);
    N = N + 2;
    S = S + 1;
end
fprintf('Using Leibniz''s series, an approximation of pi within %.2f is %.2f\n',err,runsum)
end
