%% ELEG 4113: Project 11
%% List Group members who participated in this project:
% 
%
%% Project description and requirements:
% 1) Create a rectangular pulse, append zeros, and compare DFT (FFT) with
% three different lengths [25, 50, 100] of appended zeros. 
% 2) Circular shift the rectangular pulse with the 100 appended zeros to
% the right by half the length of the sequence and find its DFT 
% 3) Compare linear and circular convoluton of a triangular and rectangular
% pulse. Modify these sequence so that the linear and circular convolutions
% are the same.  Circular convolution is achieved by multiplying the FFT of
% the sequences and taking the inverse FFT.
%
%% Initial Conditions & Model Parameters
function y11 = Project11()
clear; close all; clc;
%% Rectangular Pulse with appended zeros and its PSD
% Add code to create rectangular pulse with added zeros [25, 50, 100]
% Compare the PSD of each
for N = [25,50,100]
 x = [ones(1,5) zeros(1,N)];

 if (length(x)==30)
     figure(1)
     subplot (1,2,1)
     stem ([0:length(x)-1],x,'.')
     xlabel('n')
     ylabel('x(n)')
     title('Rectangular Pulse (L=0),(N=25)zeros appended')
     grid on 
     subplot(1,2,2)
     y=abs(fft(x));
     stem([0:length(y)-1],y.^2,'.')
     xlabel('k')
     ylabel('X|k|^2')
     title('Power Spectral Density (PSD)')
      grid on 
 elseif(length(x)==55)
     figure(2)
     subplot (1,2,1)
     stem ([0:length(x)-1],x,'.')
     xlabel('n')
     ylabel('x(n)')
     title('Rectangular Pulse (L=0),(N=50)zeros appended')
     grid on 
     subplot(1,2,2)
     y=abs(fft(x));
     stem([0:length(y)-1],y.^2,'.')
     xlabel('k')
     ylabel('X|k|^2')
     title('Power Spectral Density (PSD)')
     grid on 
elseif(length(x)==105)
     figure(3)
     subplot (1,2,1)
     stem ([0:length(x)-1],x,'.')
     xlabel('n')
     ylabel('x(n)')
     title('Rectangular Pulse (L=0),(N=100)zeros appended')
     grid on 
     subplot(1,2,2)
     y=abs(fft(x));
     stem([0:length(y)-1],y.^2,'.')
     xlabel('k')
     ylabel('X|k|^2')
     title('Power Spectral Density (PSD)')
     grid on 
 end 
end
% % Circular shift x 
N = length(x);
y = circshift(x,[0 floor(N/2)]);
figure (4)
 subplot (1,2,1)
 stem ([0:length(x)-1],y,'.')
 xlabel('n')
 ylabel('y(n)')
 title('Circular Shifted Pulse')
 grid on
 subplot(1,2,2)
 y=abs(fft(y));
 stem([0:length(y)-1],y.^2,'.')
 xlabel('k')
 ylabel('Y|k|^2')
 title('Power Spectral Density (PSD)-Shifted Pulse ')
 grid on 
% 
% %% Circular vs Linear Convolution
t = linspace(-0.1,0.1,11);
w = 0.2;
x1 = tripuls(t,w);
x2 = ones(1,11);
n=0:length(x1)-1;
y_lin=conv(x1,x2);
n1=0:length(y_lin)-1;
y_circ=ifft(fft(x1).*fft(x2));
figure (5)
subplot(1,2,1)
stem(n,x1,'.')
grid on 
 xlabel('n')
 ylabel('x_1(n)')
 title('Triangle Sequence')
subplot(1,2,2)
stem(n,x2,'.')
grid on 
 xlabel('n')
 ylabel('x_2(n)')
 title('Rectangular Sequence')
 
 figure (6)
 subplot(1,2,1)
stem(n,y_circ,'.')
grid on 
 xlabel('n')
 ylabel('y_{circ}(n)')
 title('Circular Convolution')
subplot(1,2,2)
stem(n1,y_lin,'.')
grid on 
 xlabel('n')
 ylabel('y_{linear}(n)')
 title('Linear Convolution')
 
%% Modify Circular => Linear Convolution

x1 = [x1,zeros(1,10)];
x2 = [x2,zeros(1,10)];
n=0:length(x1)-1;
y_lin=conv(x1,x2);
n1=0:length(y_lin)-1;
y_circ=ifft(fft(x1).*fft(x2));
figure (7)
subplot(1,2,1)
stem(n,x1,'.')
grid on 
 xlabel('n')
 ylabel('x_1(n)')
 title('Triangle Sequence with zero padding')
subplot(1,2,2)
stem(n,x2,'.')
grid on 
 xlabel('n')
 ylabel('x_2(n)')
 title('Rectangular Sequence with zero padding')
 
 figure (8)
 subplot(1,2,1)
stem(n,y_circ,'.')
grid on 
 xlabel('n')
 ylabel('y_{circ}(n)')
 title('Circular Convolution')
subplot(1,2,2)
stem(n1(1:20),y_lin(1:20),'.')
grid on 
 xlabel('n')
 ylabel('y_{linear}(n)')
 title('Linear Convolution')

end