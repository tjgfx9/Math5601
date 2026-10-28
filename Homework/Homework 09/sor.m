function x=sor(A,b,x0,Maxit,eps,sigma)
%General setup first
n=length(b);
L=zeros(n,n);
U=zeros(n,n);
D=zeros(n,n);

for i=1:n
    D(i,i)=A(i,i);
end

for i=2:n
    for j=1:i-1
        L(i,j)=A(i,j);
    end
    for j=1:i-1
        U(j,i)=A(j,i);
    end
end
%SOR
M=L+(1/sigma)*D;
N=-(U+D-(1/sigma)*D);
x=generaliterativemethod(M,N,b,x0,Maxit,eps);
end