clc
clear 
close all
image= csvread('ab_mid.csv');
[M, N] = size(image);
blur = image;
figure(1)
subplot(2,1,1)
imshow(image);
title('original image')
subplot(2,1,2)
imshow(blur)
title('blur without filter ')
r = 3;
I = ones(r);
% If I is a 3x3 array, then what is the size of the array subset to 
% perform elementwise multiplication?

% need the same size of array , we select the image size 3*3 and perfrom 
% the operation on 

% 2. Applying the kernel is similar to taking moving average on each point,
% only this time the average is taken
% in two dimensions. How can you take the average of all the points in
% a 2D array?

% % for the 2D average we need to two loop in form of nested and need to
% for applying kernal we need to append the image with zeros

% 3. The mean-product of kernel with the array subset is stored to the
% corresponding location of the blur
% matrix. Would the elements of blur bordering the edges be different or
% the same as the ones in image?

%different , it only same if all the value is contant then filter give the
%same result 

% 4. Why would i for the max value get assigned to Y and j to X?
% getting the location of  kidny 
% initialize X, Y and max to zero
% Run FOR-loops over the image
row=M;
col=N;
hl=1;
vl=1;
blur=im2double(blur);
y=0*blur;
x_pad=zeros(row+2*vl,col+2*hl); %Padded Matrix (hl increase col)
x_pad(1+vl:row+vl,1+hl:col+hl)=blur(:,:);  
for i=1+vl:row+vl     %Going through rows
    for j=1+hl:col+hl     %Going through values one by one
        y(i-vl,j-hl)=sum(x_pad(i,j-hl:j+hl))+sum(x_pad(i-vl:i+vl,j));
         %Summing Values around current entry according 2 vl and hl
        y(i-vl,j-hl)=y(i-vl,j-hl)-x_pad(i,j);%Current Values gets added
        %twice. Once in row and once in Col
    end
end
max_=max(max(y));
[X,Y]=find(y==max_);
y=y/(2*hl+2*vl+1);
y=im2uint8(y);
% Print location of kidney. Will you use %d, %s or %f to print the
% indices?
fprintf('Located stone at (%d,%d) \n',X,Y);
figure(2)
subplot(2,1,1)
imshow(image);
title('original image')
subplot(2,1,2)
imshow(y)
title('image after kernal')