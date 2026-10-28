function x=compositeintegration(f,a,b,j)


x=0;
subint=intervalgen(a,b,j);


for i=1:j
    left=subint(i,1);
    right=subint(i,2);
    sum=simpsons(left,right,f);
    x=x+sum;
end
end