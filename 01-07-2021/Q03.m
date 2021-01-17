clc
clear 
close 
format long
approx = 0;
for k =1:10000
approx = approx + (1.0/(k^4));
end
approx
truevalue = ((pi)^4 )/90
relerror = abs(truevalue - approx)/truevalue;
fprintf('Relative error is: ');
disp(relerror);

approx = 0;
k = 10000;
while (k>=1)
approx = approx + (1.0/(k^4));
k = k-1;
end
approx
relerror = abs(truevalue - approx)/truevalue;
fprintf('Relative error is: ');
disp(relerror);

