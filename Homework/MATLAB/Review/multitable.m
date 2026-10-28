function mult=multitable(n);

for i=1:12
    mult = n * i;
    fprintf('\n%d*%d = %d\n',n,i,mult);
end