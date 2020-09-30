p = @(h) 29.921*(1 - 6.8753*10^(-6)*h);
T = @(p) 49.161*log(p)+ 44.932;
Temp=[];
fprintf('H \t\t Temp \n')
for H = -500:500:10000
    fprintf('%d \t%.3f\n',H,T(p(H)))
end
