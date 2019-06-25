clc;
clear all;
close all;
x=input('Enter a sequence : ');
a=length(x);
h=input('Enter impulse response : ');
m=length(h);
L=input('Enter length of each block L : ');
K=floor(a/L);
p=L+m-1;
r=rem(a,L);
x=[x zeros(1,r)];
z=zeros(1,m-1);
y=zeros(K+1,L+m-1);
h=[h zeros(1,L-1)];
h1=fft(h);
for k=0:K
    x1=x(L*k+1:L*k+L);
    x2=[x1 z];
    x3=partdft(x2);
    x4=x3.*h1;
   y(k+1,:)=partidft(x4);
end
y(k+1,:)=y(k+1,:);
for i=1:K
y(i+1,1:m-1)=y(i,p-m+2:p)+y(i+1,1:m-1);
end
z1=y(:,1:L)';
y1=z1(:)'
