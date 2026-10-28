A = [ 4 -1  0;
     -1  4 -1;
      0 -1  4 ];

b = [1; 2; 3];

x0 = [0;0;0];   % initial guess
Maxit = 100;
eps=10^-6;
x0=[1;1;1];
sigma=1.5;

fprintf('\n\njacobi start\n')
jacob=jacobi(A,b,x0,Maxit,eps)
fprintf('\n\njacobi alt start')
jacobialt=jacobi_alt(A,b,x0,eps,Maxit)
fprintf('\n\ngauss start\n')
gauss=gaussseidel(A,b,x0,Maxit,eps)
fprintf('\ngauss alt start\n\n')
galt=gauss_alt(A,b,x0,eps,Maxit)
fprintf('\n\nsor start\n')
soar=sor(A,b,x0,Maxit,eps,sigma)

