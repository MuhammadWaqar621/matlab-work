clc
clear
g = @(x) x + 1 - tan(x/4);
r = pi;
x = 3;
for k = 1:12
x(k + 1) = g(x(k));
end
err = abs(x - r);
semilogy(err, '.-'), axis tight
xlabel('iteration'), ylabel('error')
p = polyfit(1:13, log(err), 1)
sigma = exp(p(1))
err(9:12) ./ err(8:11)