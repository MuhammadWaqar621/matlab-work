
function leib1
n = getn;
num = -4 * cumprod(-ones(1,n));
denom = 1:2:2 * n;
pie = sum(num./denom);
% Display the result
fprintf('Leibniz''s approximation for pi with %d terms is %.4f\n',n,pie);
end