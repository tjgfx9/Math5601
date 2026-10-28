function x=composite38integration(f,a,b,j)


x=0;
subint38=intervalgen(a,b,j);


for i=1:j
    left=subint38(i,1);
    right=subint38(i,2);
    sum=problemD(left,right,f);
    x=x+sum;
end
end