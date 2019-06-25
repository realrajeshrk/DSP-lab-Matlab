function y=partidft(xk)
ln=length(xk); 
ixk=zeros(1,ln); 
i=sqrt(-1);
t=0:ln-1;
for n=0:ln-1
    for k=0:ln-1
        ixk(n+1)=ixk(n+1)+(xk(k+1)*exp(i*2*pi*k*n/ln));
    end
end
ixk=ixk./ln;
t=0:ln-1;
y=ixk