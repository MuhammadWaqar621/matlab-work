function HW3_Q01(P, i, n)
year = 0:n;
F = P*(i+1).^year;
y = [year; F];
fprintf('\n\tyear(n)\tfuture worth(F)\n');
fprintf(' %5d %15.2f\n', y);
end
