clc;
clear all;
close all;
x=input('Enter a sequence')
x=conj(x)
n=length(x)
s=log2(n)
for m=s-1:-1:0
    for p=0:1:((2^m)-1)
        for k=p:(2^(m+1)):n-1
            b=x(k+1)
            t=exp(-pi*i*p/(2^m))
            x(k+1)=b+x(k+(2^m)+1)
            x(k+(2^m)+1)=(b-x(k+(2^m)+1))*t
        end
    end
end
y=bitrevorder(x)
y=(1/n)*conj(y)