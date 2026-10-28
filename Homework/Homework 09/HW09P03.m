A=[1,0,1;-1,1,0;1,2,-3];
b=[0;0;0];
x0=[1;1;1];

Maxit=100;
B=[4,-1,0;-2,6,1;1,-1,7];
c=[1,4,-6];



for i=1:6
    eps=10^-i;
fprintf('\n\nJacobi Method;\n\n')
jacobimethodShortcut=jacobi_alt(A,b,x0,eps,Maxit)



fprintf('\n\nGauss-Seidel Method;\n\n')
gaussshort=gauss_alt(A,b,x0,eps,Maxit)


end

fprintf('\n\n\n\n\nAdded later, this choice of B is diagonally dominant.\n')
fprintf('\n\nJacobi Method;\n\n')
jacobimethodDiagDom=jacobi_alt(B,c,x0,eps,Maxit)



fprintf('\n\nGauss-Seidel Method;\n\n')
gaussDiagDom=gauss_alt(B,c,x0,eps,Maxit)
