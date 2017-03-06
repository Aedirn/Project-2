clear; 

[wave,fs]=audioread('HaydnL.wav');
wavef = wave(:,1)+wave(:,2)/2;
t=0:1/fs:(length(wavef)-1)/fs;
figure;

plot(t,wavef);

xlabel('Time(s)');
ylabel('Amplitude');
title('Wavelength of HaydnL.wav');

succ