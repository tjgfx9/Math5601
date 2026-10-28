function x=generaliterativemethod(M,N,b,x0,Maxit,eps)

k=0;
M1=inv(M);
B=M1*N;
c=M1*b;
while k<=Maxit
   x=B*x0+c;
   if norm(x-x0)<eps
       break
   end
   x0 = x; % Update x0 for the next iteration
   k = k + 1; % Increment the iteration counter
end
if k>Maxit
    fprintf('Maximum iterations reached without convergence.');
end
end
