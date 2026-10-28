m=input('Enter number of equations to randomly generate: ');

A=zeros(m,m);
for i=1:m
    for j=1:m
        A(i,j)=randi([-100,100]);
    end
end

B=randi([-100,100],m,1);

tic

X=A\B;

X

toc
