clc
clear all
h=[-500:500:10000];
p=29.921*(1 - 6.8753 *10^-6 .*h);
Tb=49.161.* log(p) + 44.932;
fprintf('Altitude | Boiling Temp\n --------------------\n')
for (i=1:length(h))
    disp([num2str(h(i)), ' | ', num2str(Tb(i))])
end 