function x=backwardeulerfpmeth(f,a,b,y0,j,etol,ef,M)

%y'(t) = f(t,y)
%[a,b] is the interval
%y0 = g  --> y(a) = g
%etol is xk-xk-1 < etol
%ef is g(x)-x < ef
%M is iteration stopper for runaway cases


h=(b-a)/j;

x=zeros(j+1,3);

x(1,1)=a;
x(1,2)=y0;

for i=1:j
    tj=a+i*h;
    g =@(y)  y0+h*f(tj,y);
    [yj,K]=fpmeth(g,y0,etol,ef,M);
    x(i+1,1)=tj;
    x(i+1,2)=yj;
    x(i+1,3)=K;
    y0=yj;
    
end
end