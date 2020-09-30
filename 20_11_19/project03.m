%% DCM Project 3 
clear; 
close all; clc; 
load data;%ECG data file
y=medfilt1(Data.ECG(:,8));
% remove spikes from data in lead II 
mp =0.005;% signal max and min limit is 5mV 
% 96 signal max, min <5 mV 
yt =y(50000:51000); % select single cardiac cycle for display
t=0:1000; 
t=t/1000; % scale to seconds
plot(t,yt)
grid on
xlabel('t(sec)'); 
ylabel('y(t)'); 
title('Lead II Input Recording') 
% DPCM Encode 
y=5*y/mp;% Scale ECG waveform to range[-1,1] 
% initialize the codebook 
initcodebook = [-1:1:1]; 
% find optimal predictor, codebook, and partition 
[predictor,codebook,partition] =dpcmopt(y, 1,initcodebook);
[indx,quants] = dpcmenco(y,codebook,partition,predictor);
[sig,quanterror] = dpcmdeco(indx,codebook,predictor) ;
snr_=snr(sig(50000:51000)',(y(50000:51000)-sig(50000:51000)'));
figure(2)
plot(t,y(50000:51000))
grid on
xlabel('t(sec)'); 
ylabel('y(t)'); 
title(['Lead II DPCM Decoded (Scaled), SQNR=36.45 db']) 

% PEC for uniform quantize 
Quntize_=uencode(y,3);
deQuntize_=udecode(Quntize_,3);
compsig = compand(y,255,max(y),'mu/compressor');
expansig= compand(compsig,255,max(y),'mu/expander');