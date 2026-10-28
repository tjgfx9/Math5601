function x=jacobi(A,b,x0,Maxit,eps)
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


%jacobi Method
M=D;
N=-(L+U);
x=generaliterativemethod(M,N,b,x0,Maxit,eps);
end