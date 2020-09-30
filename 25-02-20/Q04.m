clc
clear all
close all 
img=imread('Capture.PNG');
subplot(131)
imshow(img)
title('original image')
gray=rgb2gray(img);
[rows col]=size(gray);
upperHalf=gray(1:floor(rows/2),:);
bottomHalf = gray(floor(rows/2)+1:end,:);
invert=imcomplement(bottomHalf);
new_gray=[upperHalf;invert];
subplot(132)
imshow(new_gray)
title('gray and half bottom inverted')

% part b 
imgRGB=img;
[r, c, ~] = size(imgRGB);
r = round(r/2);

imgRGB([r:end],[1:c],1) = rgb2gray(imgRGB([r:end],[1:c],:)); 
for i = 2:3
  imgRGB([r:end],[1:c],i) = imgRGB([r:end],[1:c],1);
end
subplot(133)
imshow(imgRGB)
title('half gray and half color ')
