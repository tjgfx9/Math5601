function sumf = sumFactorials(n)


sumf = 0;

if n<0
    fprintf('\n\nError, input must be positive.\n\n')
elseif n==0
    sumf=0;
else
for k = 1:n
    sumf = sumf + factorialCalc(k);
end

end