clc;
close all;
clear all;
n=0;
x=input('Enter 8 point sequence');
x=bitrevorder(x);
j=sqrt(-1);
y=zeros(1,8);
y(1)=x(1)+x(2);
y(2)=x(1)-x(2);
y(3)=x(3)+x(4);
y(4)=x(3)-x(4);
y(5)=x(5)+x(6);
y(6)=x(5)-x(6);
y(7)=x(7)+x(8);
y(8)=x(7)-x(8);
y=y;
z1=y(:,(1:4)) %before multiplying with wn term
z2=y(:,(5:8))
for k=3:4
    w=exp(-j*2*pi*n/8);
    z1(k)=z1(k)*w;
    n=0;
    n=n+2;
end
z1=z1
z2(3)
for k=3:4
    w=exp(-j*2*pi*n/8);
    z2(k)=z2(k)*w;
    n=0;
    n=n+2;
end
z2