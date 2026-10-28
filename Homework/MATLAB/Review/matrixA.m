m=input('Enter number of variables: ');
n=m+1;
A=zeros(m,m);
x=zeros(m)


for i=1:m
    for j=1:m
        hold=sprintf('\n\nEnter value at %d,%d: ',i,j);
        A(i,j)=input(hold);
    end
end

A

det(A)
rank(A)