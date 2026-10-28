function x=backwardeulernewtmeth(f,a,b,y0,j,etol,ef,edf,M)


h=(b-a)/j;
tj=a;
x=zeros(j+1,3);
x(1,1)=tj;
x(1,2)=y0;

for i=1:j
    tj=a+i*h;
    g= @(y) y0+h*f(tj,y)-y;
    [yj,K]=newtmeth(g,y0,etol,ef,edf,M);
    x(i+1,1)=tj;
    x(i+1,2)=yj;
    x(i+1,3)=K;
    y0=yj;
end