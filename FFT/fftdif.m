clc;
clear all;
close all;
x=input('Enter a sequence')
a=length(x);
j=sqrt(-1);
n=0;
y=zeros(1,8);
for k=1:8
    if(k>=1&k<=4)
        y(k)=x(k)+x(k+4);
    end
    if(k>4 & k<=8)
        y(k)=x(k-4)-x(k)
    end
end
y=y
for k=(5:8)
    w=exp(-j*2*pi*n/8);
    y(k)=y(k)*w;
    n=n+1;
end
y=y
z1=y(:,(1:4))
b=length(z1);
z2=y(:,(5:8))
for k=1:4
    if k>=1 & k<=2
        z3(k)=z1(k)+z1(k+2);
    end
    if(k>=3 & k<=4)
        z3(k)=z1(k-2)-z1(k);
    end
end
z3=z3

for k=1:4
    if k>=1 & k<=2
        z4(k)=z2(k)+z2(k+2);
    end
    if k>2 & k<=4
        z4(k)=z2(k-2)-z2(k);
    end
end
z4=z4

z=[z3 z4];
for k=3:4
    w=exp(-j*2*pi*n/a);
    z3(k)=z3(k)*w;
    n=n+2;
end
for k=3:4
    w=exp(-j*2*pi*n/a);
    z4(k)=z4(k)*w;
    n=n+2;
end
z=[z3 z4]
for k=1:2:7
    y(k)=z(k)+z(k+1);
end
for k=2:2:8
    y(k)=z(k-1)-z(k);
end
y=bitrevorder(y)