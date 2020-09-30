function [tVec, nVec, xVec] = fxNthOrderPolyDTSignal(domainVec,noOfSamples, rootsVec);
% Dene symbolic polynomial
syms x polyx;
polyx = x-rootsVec(1);
for i=2:length(rootsVec)
    polyx = polyx*(x-rootsVec(i));
end
% Dene sampled function
interval = (max(domainVec) - min(domainVec))/(noOfSamples - 1);
tVec = zeros(1, noOfSamples);
nVec = zeros(1, noOfSamples); mid_index = -1;
tVec(1) = min(domainVec);
for i=2:length(tVec)
    tVec(i) = tVec(1) + (i-1)*interval;
    if mid_index == -1
        if tVec(i)==0 
            mid_index = i;
        elseif tVec(i-1)*tVec(i) < 0
            if abs(tVec(i-1))< abs(tVec(i)) 
                mid_index = i-1;
             else
                mid_index = i;
            end
        end
    end
end
nVec(mid_index) = 0;
for i=mid_index+1:length(nVec)
    nVec(i) = nVec(i-1) + 1;
end
for i=1:mid_index-1
    nVec(mid_index-i) = - i;
end
xVec = ones(1, noOfSamples);
for i=1:length(rootsVec)
    xVec = xVec.*(tVec - rootsVec(i));
end
% plot of symbolic polynomial
figure;
fplot(polyx, [min(domainVec) max(domainVec)],'k');
xlabel('t --->');
ylabel('x(t) --->');
% plot of sampled polynomial
figure;
plot(tVec,xVec, 'k');
xlabel('\Deltant --->');
ylabel('x(\Deltant) --->');
% stem plot of sampled polynomial
figure;
stem(nVec,xVec, 'k');
xlabel('n --->');
ylabel('x[n] --->');

end 