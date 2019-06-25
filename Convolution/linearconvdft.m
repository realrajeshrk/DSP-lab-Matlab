clc;
clear all;
close all;
x=input('Enter a sequence');
a=length(x);
h=input('Enter another sequence');
b=length(h);
c=a+b-1;
x=[x,zeros(1,b)];
h=[h,zeros(1,a)];
i=sqrt(-1);
t=0:c-1;
xk1=zeros(1,c);
xk2=zeros(1,c);
xk3=zeros(1,c);
ixk=zeros(1,c);
%first dft
for k=0:c-1
    for n=0:c-1
        xk1(k+1)=xk1(k+1)+(x(n+1)*exp(-i*2*pi*k*n/c));
    end
end
%second dft
for k=0:c-1
    for n=0:c-1
        xk2(k+1)=xk2(k+1)+(h(n+1)*exp(-i*2*pi*k*n/c));
    end
end
%multiplying
xk3=xk1.*xk2;
%idft
for n=0:c-1
    for k=0:c-1
        ixk(n+1)=ixk(n+1)+(xk3(k+1)*exp(i*2*pi*k*n/c));
    end
end
ixk=ixk./c;
stem(t,ixk);
ixk=ixk