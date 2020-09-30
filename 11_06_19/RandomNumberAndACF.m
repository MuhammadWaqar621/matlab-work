clc
clear all
close all
%% first part of the question

% randomly generating 10 numbers 
% via rand function of matlab
% using the seed of 1
rng(1);% seeding 1 to the random number generators
Random = rand(1,10);
fprintf('%10.6f',Random)% decimating 6 decimal points after the decimal point
figure()
HISTO =histogram(Random,'BinWidth',1/10);
HISTO.NumBins = 10;
title('histogram of rand(1)')

%% part ii of the part a

% now we have to increase the size of random vector
% by increasing the size we are confirmin it will be uniform

random1000a = rand(1,1000);% increased length vector eith random numbers as elements
fprintf('%10.6f',random1000a)
figure()
HISTOb = histogram(random1000a,10,'BinWidth',1/10)
HISTOb.NumBins = 10;
title('rand1000(1)')
%% this time part b

% repeating the same procedure with different seed
% seed of current time of the day
% will produce different results
% two loops for performing the generation of random n

for i=1:100
    % 100 times changig the seed value with 100 different instants of time
    % of the day
        rng('shuffle');
for j =1:1000

    avgX(i,j) = rand(1);
end
end
%% performing the average of 100 different x vectors of 1000 length

X = sum(avgX)/100;
fprintf('%10.6f',X)
figure()
dhistragrm = histogram(X,10,'BinWidth',1/10)
dhistragrm.NumBins = 10;
title('x vector pdf')
%% first part of part c of the question

% randomly generating 10 numbers 
% via rand function of matlab
% using the seed of 1
rng(1);% seeding 1 to the random number generators
Random = randn(1,10);
fprintf('%10.6f',Random)% decimating 6 decimal points after the decimal point
figure()
HISTO =histogram(Random,'BinWidth',1/10);
HISTO.NumBins = 10;
title('histogram of randn(1)')
%% part ii of the part c

% now we have to increase the size of random vector
% by increasing the size we are confirmin it will be uniform

random1000c = randn(1,1000);% increased length vector eith random numbers as elements
fprintf('%10.6f',random1000c)
figure()
HISTOc = histogram(random1000c,10,'BinWidth',1/10)
HISTOc.NumBins = 10;
title('randn1000(1)')

%% second part of the question

% ACF for part a

[normalizedACFa, lagsa] = autocorr(random1000a, 10);
[normalizedACFb, lagsb] = autocorr(X, 10);
[normalizedACFc, lagsc] = autocorr(random1000c, 10);
disp('Normalized Autocorrelation for sequence in part a')
normalizedACFa
disp('Normalized Autocorrelation for sequence in part b')
normalizedACFb
disp('Normalized Autocorrelation for sequence in part c')
normalizedACFc

% filter first order system with time constant 1


t = 0:0.1:10;
ht = exp(-t);
y = conv(ht,random1000a);

% Auto correlation of y
[normalizedACFy, lagsc] = autocorr(y, 10);

disp('Normalized Autocorrelation for filtered sequence of a ')
normalizedACFy
figure()
stem(normalizedACFa)
title('ACF of not filtered sequence')
figure()
stem(normalizedACFy)
title('ACF of filtered sequence')