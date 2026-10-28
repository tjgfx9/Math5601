function x=problemD(a,b,f)

%Uses reference nodes and weights for [0,1]
%Applies affine mapping to map [a,b] to [0,1]

refnodes=[0,1/3,2/3,1];
refweights=[1/8,3/8,3/8,1/8];
affinenodes=(b-a)*refnodes+a;
affineweights=(b-a)*refweights;

x=0;
i=length(refnodes);

for n=1:i
    x=x+f(affinenodes(n))*affineweights(n);
end
end
