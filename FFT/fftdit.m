clc;
close all;
clear all;
x=input('Enter 8 pt sequence');
n=0;
y=bitrevorder(x);
m=1;%for indexing wn later on
p=1;%for indexing wn later on
q=1;%for indexing wn later on
b=zeros(1,8);
c=zeros(1,8);
for n=0:3
    w(n+1)=exp(-i*2*pi*n/8);
end
z=zeros(1,8);
for k=1:2:7
    z(k)=y(k)+y(k+1);
end
for k=2:2:8
    z(k)=y(k-1)-y(k);
end
c=z(:,(1:4));
d=z(:,(5:8));
for k=3:4
    c(k)=c(k)*w(m);
    m=m+2;
end

for k=3:4
    d(k)=d(k)*w(p);
    p=p+2;
end
z=[c d];
for k=1:8
    if k>=1 & k<=2
    b(k)=z(k)+z(k+2)
    end
    if k>=3 & k<=4
    b(k)=z(k-2)-z(k)
    end
    if k>=5 & k<=6
    b(k)=z(k)+z(k+2)
    end
    if k>=7 & k<=8
    b(k)=z(k-2)-z(k)
    end
end
for k=5:8
    b(k)=b(k)*w(q);
    q=q+1;
end
for k=1:8
 if k>=1 & k<=4
     c(k)=b(k)+b(k+4);
 end
 if k>=5 & k<=8
     c(k)=b(k-4)-b(k);
 end
end
subplot(1,2,1);
stem(x);xlabel('time');ylabel('magniude');title('Input sequence');
subplot(1,2,2);
stem(c);xlabel('time');ylabel('magniude');title('Convolved sequence');

