clc
clear 
close all
% Read csv file
% image = ?;
% [M, N] = ?;
image=csvread('brain.csv');
[M, N] =size(image);
% blur = ?;
% figure()
% subplot
% imshow(?);
% subplot
% ??
blur=image;
figure 
subplot 211
imshow(image)
title('Original Image')
subplot 212
imshow(blur)
title('before blur kernal')
% Build blur tool kernel
% r = ?;
% I = ?;
r=3;
I=ones(3);

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
blur=im2uint8(y);
% Print location of kidney. Will you use %d, %s or %f to print the
% indices?
fprintf('Located stone at (%d,%d) \n',X,Y);
figure(2)
subplot(2,1,1)
imshow(image);
title('original image')
subplot(2,1,2)
imshow(blur)
title('image after kernal')

edge=blur;
T=[-1 -1 -1; -1 8 -1;-1 -1 -1];

edge=im2double(edge);
y=0*edge;
x_pad=zeros(row+2*vl,col+2*hl); %Padded Matrix (hl increase col)
x_pad(1+vl:row+vl,1+hl:col+hl)=edge(:,:);  
for i=1+vl:row+vl     %Going through rows
    for j=1+hl:col+hl     %Going through values one by one
        y(i-vl,j-hl)=sum(x_pad(i,j-hl:j+hl))+sum(x_pad(i-vl:i+vl,j));
         %Summing Values around current entry according 2 vl and hl
        y(i-vl,j-hl)=y(i-vl,j-hl)-x_pad(i,j);%Current Values gets added
        %twice. Once in row and once in Col
    end
end
y=y/(2*hl+2*vl+1);
edge=y;
% Thresholding
edge(edge <0.2 ) = 1;
% 2. Can the result of mask be saved back to the edge matrix? 
% See previous example on applying a mask to
% an array and saving the result back to itself. This step 
% shouldn't require a FOR-loop or the IF-block.

% yes we can do it without loop as i did in line 104 (edge(edge <0.2 ) = 1)


% Final image

% plot image and edge
figure()
subplot 211
imshow(image);
title('Original Image')
subplot 212
imshow(edge);
title('Threshol Image')
% plot a red circle [X,Y] on top of the second image. use plot() function.
hold on
plot(X,Y,'ro')
