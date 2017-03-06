clear; 

k=32;

[wave,fs]=audioread('HaydnL.wav');

waveT = (wave(:,1)+wave(:,2))/2;
wavef = waveT(1:k:end); 

sound(wavef,fs/k);

t=0:1/(fs/k):(length(wavef)-1)/(fs/k);
figure;
plot(t,wavef);

xlabel('Time(s)');
ylabel('Amplitude');
title('Wavelength of HaydnL.wav');