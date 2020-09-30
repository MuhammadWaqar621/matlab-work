clc
clear
g = @(x) 1/2*(x+9/x);
r = 3;
x = pi;
for k = 1:12
x(k + 1) = g(x(k));
end
err = abs(x - r);
semilogy(err, '.-'), axis tight
xlabel('iteration'), ylabel('error')
p = polyfit(1:13, log(err), 1)
sigma = exp(p(1))
err(9:12) ./ err(8:11)