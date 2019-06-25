clc;
close all;
clear all;
%design of butterworth filter
fs=input('Enter stopband edge frequency in rad/s'); %fs is stop band edge frequency
fp=input('Enter passban edge frequency in rad/s');   %fp is pass band edge frquency
a=input('Enter pass band gain');                 %a is pass band gain
b=input('Enter stop band attenuation');             %b is stop band attenuation


%to find order
a1=20.*(log10(a));
b1=20.*(log10(b));
a2=-0.1*a1;
b2=-0.1*b1;
eps=sqrt((10.^(a2))-1);
del=sqrt((10.^(b2))-1);
N1=log10(del/eps);
N2=log10(fs/fp);
n=N1/N2;
N=ceil(n);                       %order is stored in N

%finding cut off frequency
den1=(10.^b2)-1;
den2=(den1).^(1/(2*N));
delc=fs/den2                     %cut off frequency is stored in delc

%finding poles
[z,p,k]=butter(N,delc/1000,'High')
sos = zp2sos(z,p,k)
fvtool(sos,'Analysis','Freq')