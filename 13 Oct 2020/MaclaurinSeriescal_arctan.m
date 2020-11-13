function[approximately,nal_e_a,number_itera]=MaclaurinSeriescal_arctan(x,n,max_iter)
% Matlab function to calculate the approximatelyimate value of arctan(x)
% using the Maclaurin series approximatelyimation
% number of iterations
number_itera = 1;
% calculate the value of e_s for approximatelyimation
e_s = (0.5*(10^(2-n)))/100; 
% previous value of arctan
ptan = 0; 
% current value of arctan
ctan = x; 
% absolute difference between current and previous 
% value of calculated arctan
nal_e_a = abs(ptan-ctan);
sf = -1;
% loop continues till nal_e_a >= e_s and number of
% iterations < maximum number of iterations
while(nal_e_a >= e_s && number_itera < max_iter)
     % set current value of arctan to previous value of arctan
    ptan = ctan;
    % add the next term of series to current value of arctan
    ctan = ctan + (sf *((x^(2*number_itera+1))/(2*number_itera+1)));
    % increment the number of iterations
    number_itera = number_itera+1; 
    % alternate the sign
    sf = -sf; 
    % absolute difference between current 
    % and previous value of calculated arctan
    nal_e_a = abs(ptan-ctan); 
end
approximately = ctan;
end
