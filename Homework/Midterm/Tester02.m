y0=0.1;
a=0;
b=1;
h=1/4;
etol=10^-6;
ef=etol;
M=100;
tj=a+1*h

f= @(t,y) exp(2*t)+y^2;
g= @(y) y0 + h*f(tj,y);



yj=fpmeth(g,y0,etol,ef,M);
yj