clear; 
close all;

k=4;

[wave,fs]=audioread('HaydnL.wav');

waveT = (wave(:,1)+wave(:,2))/2;
wavef = waveT(1:k:end); 

sound(wavef,fs/k);

t=0:1/(fs/k):(length(wavef)-1)/(fs/k);
figure;

n2=length(wavef); 

power = 1/n2 * sum(wavef.^2);


plot(t,wavef);

xlabel('Time(s)');
ylabel('Amplitude');
title('Wavelength of HaydnL.wav');


n=length(wave)-1; 
f=0:(fs/k)/n:(fs/k/n)*(n-1);
wavefft=abs(fft(wavef,n)); 
figure;
plot(f/1000,(wavefft)); 