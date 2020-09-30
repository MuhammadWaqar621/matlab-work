clc
clear 
% read image 
i=imread('Q01_1.jpeg');
imshow(i)
title('Image')
% conver into gray scale
ig=rgb2gray(i);
figure
imshow(ig)
title('gray image')
% row and column
[row,col]=size(ig);
% resize image i
I=imresize(ig,256/min(row,col));
I=I(1:256,1:256);
% extract first and second row from  gray scale image 
ii=1;
for j=1:256;
    firs(ii,j)=I(ii,j);
    seco(ii,j)=I(ii+1,j);
end 
% Z Transform of first row
firsz=ztrans(sym(firs));
% DFT of second row 
secodf=fft(seco,5);
figure 
stem(secodf)
hold on 
plot (secodf)
hold off
title('Samples')
