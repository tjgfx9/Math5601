m=input('\nEnter the number of variables: ');
n=m+1;

A=zeros(m,n);

% Fill the main matrix with values
for i=1:m
    for j=1:m
        prompt=sprintf('Enter the value at (%d,%d): ',i,j);
        A(i,j) = input(prompt);
    end
end

% Fill the last column of A with user-defined values
for i=1:m
    prompt = sprintf('Enter the value at (%d,%d): ', i, n);
    A(i,n) = input(prompt);
end