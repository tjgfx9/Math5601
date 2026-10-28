function [ak,errors]=doublecenter(f,fprime,n,x0)

ak=zeros(n,2);
errors=zeros(n,2);
%ak and errors have column 2 as the iteration counter for visualization

for i=1:n
    h=10^-i;
    ak(i,1)=(f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h))/(12*h);
    ak(i,2)=i;
    errors(i,1)=abs(fprime(x0)-ak(i));
    errors(i,2)=i;
end
end
