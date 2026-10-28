function fac=factorialCalc(f);

n=f;
fac=f;

if f<0
    fprintf('\nError: The number you entered is negative.\n\n')
elseif f==0
    fac=1;
else
    while f>1
        n=n-1;
        fac=fac*n;
        f=f-1;
    end
end
        
