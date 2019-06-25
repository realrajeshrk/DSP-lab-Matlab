function y=partdft(xn) 
ln=length(xn); 
xk=zeros(1,ln);
ixk=zeros(1,ln); 
i=sqrt(-1);
for k=0:ln-1
    for n=0:ln-1
        xk(k+1)=xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/ln));
    end
end
t=0:ln-1;
y=xk;