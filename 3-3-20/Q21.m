clc
clear all
close all 
G=[68 83 61 70 75 82 57 5 76 85 62 71 96 78 76 68 72 75 83 93];
H=sort(G);
subplot(311)
bar(H)
title('Bar graph of the scores')
subplot(312)
histogram(H)
title('Histogram of the scores')
edges=[0 60 70 80 90 100];
subplot(313)
histogram(edges,H)
title('edges apply on scores')
