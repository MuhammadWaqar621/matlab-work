clc
clear 
close
load handel.mat
soundsc(y,2*Fs);
figure(1) 
numframes=16; 
A=moviein(numframes); % create the movie matrix 
set(gca,'NextPlot','replacechildren') 
axis equal % fix the axes 
for i=1:numframes 
    plot(fft(eye(i+16))); 
    A(:,i)=getframe; 
end
save movie.mat A % save the MATLAB movie to a file 
% mpgwrite(A,jet,'movie.mpg'); % Convert the movie to MPEG format 
% Notice the MPEG file is about a quarter of the size of the MATLAB movie file 
unix('mpeg_play movie.mpg') % Play the MPEG movie