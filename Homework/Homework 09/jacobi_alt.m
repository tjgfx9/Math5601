function x=jacobi_alt(A,b,x0,eps,Maxit)


%jaconi_alt solves by going line by line
%xi=1/a11(bi-sumaijxj-sumaijxj) Rather than finding
% x = M-1Nx+M-1b
k=0;
n=length(b);
x=zeros(n,1);


while k<Maxit
    for i=1:n
        sum1=0;
        for j=1:i-1
            sum1=sum1+A(i,j)*x0(j);
        end
        sum2=0;
        for j=i+1:n
            sum2=sum2+A(i,j)*x0(j);
        end
        x(i)=(1/A(i,i))*(b(i)-sum1-sum2);
    end
    if norm(x-x0)<eps
        break
    end
    x0=x;
    k=k+1;
end
fprintf('The solution took %d iterations.\n\n',k)
end
