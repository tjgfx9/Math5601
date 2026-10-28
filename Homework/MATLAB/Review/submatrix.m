matrixinput


B=size(A);
Am = B(1);
An = B(2);

Cm=Am-1;
Cn=An-1;

C=zeros(Cm,Cn);
for i=1:Cm
    for j=1:Cn
        C(i, j) = A(i+1, j+1); % Example operation to fill C
    end
end

A
C