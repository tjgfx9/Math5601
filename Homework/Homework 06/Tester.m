f=@(x) cos(pi/4*x)/(sin(pi/4*x))^2



a=1;
b=2;

x=middlepointrule(a,b,f);
y=twopointopen(a,b,f);
z=simpsons(a,b,f);
d=problemD(a,b,f);

Qf=[x;y;z;d];
Jf=0.527393087579050;
Ef=Jf-Qf

