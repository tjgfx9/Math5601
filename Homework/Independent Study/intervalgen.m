function subint=intervalgen(a,b,j)


%j is the number of subintervals
h=(b-a)/j;

subint=zeros(j,2);
subint(1,1)=a;
for i=1:j-1
    subint(i,2)=a+i*h;
    subint(i+1,1)=subint(i,2);
end
subint(j,2)=b;

end

