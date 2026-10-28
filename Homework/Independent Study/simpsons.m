function x=simpsons(a,b,f)

%Uses reference nodes and weights for [-1,1]
%Applies affine mapping to map [a,b] to [-1,1]

refnodes=[-1,0,1];
refweights=[1/3,4/3,1/3];
affinenodes=((b-a)/2)*refnodes+((a+b)/2);
affineweights=((b-a)/2)*refweights;

x=0;
i=length(refnodes);

for n=1:i
    x=x+f(affinenodes(n))*affineweights(n);
end
end
