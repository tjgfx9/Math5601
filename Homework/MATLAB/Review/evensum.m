function total=evensum(a);

total=0;

if a<=0
    fprintf('\n\nError! The input must be positive.\n\n')
elseif rem(a,2)==1
    a=a-1;
end



for i=2:2:a

    total=total+i;

end


