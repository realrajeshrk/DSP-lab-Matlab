clc;
close all;
clear all;
x=input('Enter a sequence');
a=length(x);
h=input('Enter impulse response');
m=length(h);
L=input('Enter length of each block');
p=L+m-1;
z=zeros(1,m-1);
h=[h zeros(1,L-1)];
h1=fft(h);
r=rem(a,L);
x=[x zeros(1,(L-r))];
K=floor(a/L);
for k=0:K
    x1(k+1,:)=x(L*k+1:L*k+L);
end
for k=0:K
    if k==0
        x2(k+1,:)=[z x1(k+1,:)];
        
    else 
        x2(k+1,:)=[x1(k,(L-m+2:L)) x1(k+1,:)];
    end
    y(k+1,:)=ifft(fft(x2(k+1,:)).*h1);
end
y(k+1,:)=y(k+1,:);
z=y(:,m:p);
z=z';
y=z(:)'

