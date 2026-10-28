format long
c = @(x) exp(-sin(x));
f = @(x) exp(-sin(x))*(-cos(x)+sin(x)*cos(x)-(1/4)*x^(-3/2)-(1/2)*(x^(-1/2))*cos(x));
a=1;
b=4;
ga=cos(1)+1;
gb=cos(4)+2;
jf= @(x) cos(x)+sqrt(x);
Maxit=200;
eps=10^-5;


for counter=1:6
    N=12*2^(counter-1);
    h=(b-a)/N
    fprintf('\n\n\nN=%d, h=%f\n\n',N,h)
    [A,bvec]=finiteelement1dcase(f,c,a,b,N);
    [A,bvec]=dirichletboundary(A,bvec,ga,gb);
    x0=ones(N+1,1);


    backslash=A\bvec;
    gaussianelim=gausselim(A,bvec);
    Jacobi=jacobi(A,bvec,x0,Maxit,eps);
    GS=gaussseidel(A,bvec,x0,Maxit,eps);

    xvalues=zeros(N+1,1);
    for i=1:N+1 
    xvalues(i)=a+(i-1)*((b-a)/N);
    end

    figure;
    hold on;
    plot(xvalues,backslash,'r-',LineWidth=2)
    plot(xvalues,gaussianelim,'g-',LineWidth=2)
    plot(xvalues,Jacobi,'b-',LineWidth=2)
    plot(xvalues,GS,'y-',LineWidth=2)

   error=zeros(N+1,4);
   for i=1:N+1
       actual=jf(xvalues);
       error(i,1)=abs(actual(i)-backslash(i));
       error(i,2)=abs(actual(i)-gaussianelim(i));
       error(i,3)=abs(actual(i)-Jacobi(i));
       error(i,4)=abs(actual(i)-GS(i));
   end
   backslash=[backslash,xvalues];
   backslash
   error

end