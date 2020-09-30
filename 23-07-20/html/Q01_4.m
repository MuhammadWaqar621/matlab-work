clc
clear 
close 
warning off
% import image in current folder and read 
img=imread('Q01_4.jpeg');
% make it grayscale image
gray_img=rgb2gray(img);
% size of image
[row_img,col_img]=size(gray_img);
% resize image img
Img=imresize(gray_img,256/min(row_img,col_img));
Img=Img(1:256,1:256);
% part a
% extract first row of gray scale image
first_row=Img(1,:);
% Z Transform of first row
first_row=sym(first_row);
first_row_z=ztrans(first_row);
% % part b
% DFT of second row 
second_row=Img(2,:);
second_row_fft=fft(second_row,5);
% plot image and DFT
figure 
subplot 211
imshow (img)
title('Original Image')
subplot 212
imshow(gray_img)
title('Gray Image')
figure
stem(second_row_fft)
hold on 
plot (second_row_fft)
title('DFT Samples')
