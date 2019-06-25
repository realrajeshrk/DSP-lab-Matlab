close all;
clear all;
clc;
x=input('enter the sequence')
N=length(x)
a=zeros(1,N)
z=zeros(1,N)
y=[1:N]
p=bitrevorder(y)
t=expm(-i*2*pi/N);
for i=1:N
b=p(i)
a(b)=x(i)
end
for m=1:log2(N)
    k=0:(2^(m-1))-1
    j=1
    i=1
    for q=1:N/2
        z(i)=a(i)+a(i+2^(m-1))*t^k(j)
        z(i+2^(m-1))=a(i)-a(i+2^(m-1))*t^k(j)
        j=j+1
        
        if(mod(i,2^(m-1))==0)
            i=i+2^(m-1)+1
            j=1
        else
            i=i+1
        end
            
    end
    a=z
end
a=a
