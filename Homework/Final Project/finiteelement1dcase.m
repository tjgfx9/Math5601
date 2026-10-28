function [A,bvec]=finiteelement1dcase(f,c,a,b,N)

%f and c are functions
%[a,b] is interval desired
%N is number of intervals
%x0 is initial guess


h = (b - a) / N; % Calculate the step size
A=sparse(N+1,N+1);
bvec=zeros(N+1,1);
xj=zeros(N+1,1);

%Construct nodes
for j=1:N+1
    xj(j)=a+(j-1)*h;
end

%Construct Stifness Matrix A
for j=1:N+1
    if j<=N
        %Calculate Lower Diagonal
        A(j+1,j)=(1/h^2)*fourpointgaus(xj(j),xj(j+1),c);
    end
    if j>=2
        %Calculate Upper Diagonal
        A(j-1,j)=(1/h^2)*fourpointgaus(xj(j-1),xj(j),c);
    end
    if j>=2 && j<=N
        %Calculate Main Diagonal
        A(j,j)=-(1/h^2)*fourpointgaus(xj(j-1),xj(j),c)-(1/h^2)*fourpointgaus(xj(j),xj(j+1),c);
    end
end
A(1,1)=-(1/h^2)*fourpointgaus(xj(1),xj(2),c);
A(N+1,N+1)=-(1/h^2)*fourpointgaus(xj(N),xj(N+1),c);




%Construct Load Vector b
for i=2:N
    g = @(x) f(x)*((x-xj(i-1))/h);
    k = @(x) f(x)*((xj(i+1)-x)/h);
    bvec(i)=fourpointgaus(xj(i-1),xj(i),g)+fourpointgaus(xj(i),xj(i+1),k);
end
clear g;
clear k;

m= @(x) f(x)*((xj(2)-x)/h);
n= @(x) f(x)*((x-xj(N))/h);
bvec(1)=fourpointgaus(xj(1),xj(2),m);
bvec(N+1)=fourpointgaus(xj(N),xj(N+1),n);
clear m;
clear n;


%Call a seperate routine to deal with the boundary cases.
end