clc
clear all
close all
% read image 
image=imread('cameraman.tif');
% perform fft 
% use fft2 for 2 diminsion 
image_fft=fft2(image);
% show image
figure 
imshow(image)
title('original image')
% plot Magnitude responce 
figure
plot(abs(image_fft))
title('Magnitude Responce')
% plot phase responce 
figure
plot(angle(image_fft))
title('Phase Responce')
