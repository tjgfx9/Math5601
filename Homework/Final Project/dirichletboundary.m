function [A,bvec]=dirichletboundary(A,bvec,ga,gb)

A(1,:)=0;
A(1,1)=1;
A(end,:)=0;
A(end,end)=1;
bvec(1)=ga;
bvec(end)=gb;
end