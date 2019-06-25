clc;
clear all;
close all;
fs=input('Enter stop band egde frequency in rad/s');
fp=input('Enter pass band edge frequency in rad/s');
a=input('Enter pass band gain in dB');
b=input('Enter stop band attenuation in dB');

%finding order
a1=0.1*a
b1=0.1*b
b2=(10.^b1)-1;
a2=(10.^a1)-1;
num1=sqrt(b2/a2);
den1=(fs/fp);
num2=acosh(num1);
den2=acosh(den1);
n=num2/den2;
N=ceil(n);          %order stored in N

%to find epsilon
eps=sqrt(a2);
eps1=eps.^2;
numer1=(sqrt(1+eps1))+1;
bb=numer1/eps;
bb1=bb.^(1/N)



