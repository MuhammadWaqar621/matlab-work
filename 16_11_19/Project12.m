%% ELEG 4113: Project 12
%% List Group members who participated in this project:
% 
%
%% Project description and requirements:
%  Remove noise from recording
% 1) Obtain the PSD (Power Spectral Density) of the recording with noise
% and design a linear phase filter to remove the noise.  It is important to
% use a filter with linear phase so as to not alter the sound properties
% of the recording.  Please note the recording has two channels.
% 2) Document the steps used to design the filter.
% 3) Since the recording is relatively long use an overlap-add method to
% filter the signal.
% 4) Once the noise has been removed from the recording, resample the signal
% from 44,100 to 15,000 Hz careful not to alias the resampled signal.
% 5) Publish the PSD's for the original noisy signal, the the PSD's
% following filtering at the orginal sampling frequency and at the reduced
% frequency.  Also, find the signal to noise (SNR) for each channel for 
% the original recording (original sampling frequency) with noise. 
%
%%
clear; close all; clc;
% Edit following to point to location of the recording on your system
fname = 'BachWithNoise.ogg';
[y,Fs]=audioread(fname);
obj=audioplayer(y, Fs);
play(obj)
%% Power Spectral Density
windLength = 2048;
wind = hamming(windLength);
% PSD for channel 1
[Pyy,f]=pwelch(y(:,1),wind,[],[],Fs);
figure(1)
plot(f,10*log10(Pyy));grid
xlabel('Frequency (Hz)')
ylabel('Pyy (dB/Hz)')
title('PSD of Signal with High Frequency Noise')


[z,fs]=audioread('BachWithNoise.ogg'); 
bfil=fft(z); %?t of input signal 
wn=[4000 8000]/(fs/2); %bandpass
[b,a]=butter(6,wn); 
fvtool(b,a); 
f=filter(b,a,z);
after_noise_remove=audioplayer(z, fs);
play(after_noise_remove)
afil=fft(f);
figure(2)
subplot(2,1,1)
plot(real(bfil))
title('frequency respones of input signal'); 
xlabel('frequency');
ylabel('magnitude'); 
subplot(2,1,2);
plot(real(afil));
title('frequency respones of filtered signal'); 
xlabel('frequency');
ylabel('magnitude');