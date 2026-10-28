m=input('\n\nEnter number of rows: ');
n=input('\nEnter number of columns: ');



A=zeros(m,n);


a=0;
for i=1:m
    for j=1:n
        prompt=sprintf('Enter value at (%d,%d): ', i, j);
        a=input(prompt);
        A(i,j) = a;
    end
end