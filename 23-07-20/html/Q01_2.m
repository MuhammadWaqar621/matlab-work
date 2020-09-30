clc
clear all
close all
warning off
% image name is save Q01_2 and read it
img=imread('Q01_2.jpeg');
% show original image
figure(1)
imshow(img)
title('Original Image')
% conver into gray scale
img_gray=rgb2gray(img);
% show gray scale
figure(2)
imshow(img_gray)
title('gray image')
% size of img 
[rows,cols]=size(img_gray);
% resize image i
Img=imresize(img_gray,256/min(rows,cols));
Img=Img(1:256,1:256);
% extract first and second row from  gray scale
First=Img(1,:);
Second=Img(2,:);
% Z Transform of first row
firsz=ztrans(sym(First));
% DFT of second row 
secodf=fft(Second,5);
% plot sample 
figure(3)
stem(secodf)
hold on 
plot (secodf)
hold off
title('FFT Samples')
