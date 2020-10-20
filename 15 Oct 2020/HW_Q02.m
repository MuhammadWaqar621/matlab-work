function HW_Q02(P, i, n)
years = 1:n;
A = P*i*(1+i).^years./((1+i).^years-1); 
y = [years; A];
fprintf('\n year(n)\tannual payment(A)\n'); 
fprintf('%5d %15.2f\n', y);
end
