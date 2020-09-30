clc
clear all
close all
% import image 
image=imread('Q01_3.jpeg');
% conver into gray scale
image_gray=rgb2gray(image);
figure(1)
subplot (1,2,1)
imshow(image)
title('Original Image')
subplot(1,2,2)
imshow(image_gray)
% row and column
[r,c]=size(image_gray);
% resize image i
Image=imresize(image_gray,256/min(r,c));
Image=Image(1:256,1:256);
% extract first row
f=Image(1,:);
% second row 
s=Image(2,:);
% part 01
% Z Transform of first row
f=sym(f);
fz=ztrans(f);
% part 02
% DFT of second row 
sdf=fft(s,5);
figure(2)
stem(sdf)
hold on 
plot (sdf)
title('Samples of FFT')
