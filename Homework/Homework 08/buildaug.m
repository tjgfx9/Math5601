function augA=buildaug(A,b)


n=size(A,1);
augA=zeros(n,n+1);

for i=1:n
    augA(i,n+1)=b(i);
    for j=1:n
    augA(i,j) = A(i,j);
    end
end
end
