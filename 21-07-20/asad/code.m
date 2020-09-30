clear
clc
close all
format compact
fprintf(' T\\V |');
for V = 0:5:55
    fprintf('%6.1f ',V)
end
fprintf('\n');
fprintf(' _____|')
fprintf('________________________________________________')
fprintf('________________________________________________')
fprintf('\n');
wcf=[];
for T = -20:5:55
    fprintf(' %6.1f |',T)
    for V = 0:5:55
        tmp = WCF(T,V);
        fprintf('%6.1f ',tmp)
        wcf=[wcf tmp];
    end
    fprintf('\n');
end
figure (1)
comet(wcf)
title('comet plot')
figure (2)
comet3(wcf)
title('comet3 plot')