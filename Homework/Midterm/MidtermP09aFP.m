fprintf('\n\n\nProblem 9 - Fixed Point\n\n\n')


f= @(t,y)  exp(2*t)*y^2;
y0=0.2;
a=0;
b=1;
etol=10^-6;
ef=etol;
M=100;

lastfp=zeros(6,2);
for p=2:7
    j=2^p;

    fprintf('\n\nUsing j = %d\n', j);

    x=backwardeulerfpmeth(f,a,b,y0,j,etol,ef,M);
    lastfp(p-1,1)=j;
    lastfp(p-1,2)=x(j+1,2);
    fprintf('\n\nThe number of iterations in the last step, t=1 for h=1/%d was %d.\n\n',j,x(end,3))
    x
   
end


lastfp