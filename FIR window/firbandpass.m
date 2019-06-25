clc
clear all
close all
fp=input('Passband edge:');
fs=input('Stopband edge:');
fc=(fs+fp)/2
Fs=input('Enter sampling frequency:');
m=45;
n=m-1;
wc=(2*pi*fc)/Fs
wn=wc/pi
g1=rectwin(m)

g2=hamming(m)
g3=hann(m)
g5=blackman(m)

h1=fir1(n,wn,'bandpass',g1)
% wvtool(h1)
figure,freqz(h1,1,1024)
title('Rectangle window')

h2=fir1(n,wn,'bandpass',g2)
% wvtool(h2)
figure,freqz(h2,1,1024)

title('hamming window')

h3=fir1(n,wn,'bandpass',g3)
% wvtool(h3)
figure,freqz(h3,1,1024)
title('hanning window')

h5=fir1(n,wn,'bandpass',g5)
% wvtool(h5)
figure,freqz(h5,1,1024)
title('blackman window')
