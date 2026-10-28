fprintf('\n\n\nProblem 9a - Newton''s Method\n\n\n')


f= @(t,y)  exp(2*t)*y^2;
y0=0.2;
a=0;
b=1;
etol=10^-6;
ef=etol;
edf=ef;
M=100;

lastnm=zeros(6,2);
for p=2:7
    j=2^p;
    fprintf('\n\nUsing j = %d\n', j);
    x=backwardeulernewtmeth(f,a,b,y0,j,etol,ef,edf,M);
    lastnm(p-1,1)=j;
    lastnm(p-1,2)=x(j+1,2);
    fprintf('\n\nThe number of iterations in the last step, t=1 for h=1/%d was %d.\n\n',j,x(end,3))
    x
end


lastnm
errornm=zeros(6,2);