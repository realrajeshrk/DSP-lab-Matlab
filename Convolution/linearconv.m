
clc;
clear all;
close all;
q=0:3;
x=input('Enter a sequence');
a=length(x);
h=input('Enter another sequence');
b=length(h);
n=a+b-1;
y=zeros(1,n);
X=[x,zeros(1,b)];
H=[h,zeros(1,a)];
for i=1:n
    for j=1:i;
        Y(i)=y(i)+(X(j)*H(i-j+1));
    end
end
stem(q,Y);
