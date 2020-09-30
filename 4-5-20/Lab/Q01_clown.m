clc
clear 
close 
%Q01 Image 
load clown
[r,c]=size(X);
figure('Units','Pixels','Position',[100 100 c r])
image(X)
set(gca,'Position',[0 0 1 1])
colormap(map)