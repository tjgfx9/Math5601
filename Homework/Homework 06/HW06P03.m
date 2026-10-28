


f=@(x) cos(pi/4*x)/(sin(pi/4*x))^2;



a=1;
b=2;

x=middlepointrule(a,b,f);
y=twopointopen(a,b,f);
z=simpsons(a,b,f);
d=problemD(a,b,f);

Qf=[x;y;z;d];
Jf=0.527393087579050;
Ef=Jf-Qf;
Ef=abs(Ef);
fprintf('For middle point rule:\n\nQ(f)=%f\n\nE(f)=%f\n\n\n\n',Qf(1),Ef(1))
fprintf('For two point open rule:\n\nQ(f)=%f\n\nE(f)=%f\n\n\n\n',Qf(2),Ef(2))
fprintf('For Simpson''s rule:\n\nQ(f)=%f\n\nE(f)=%f\n\n\n\n',Qf(3),Ef(3))
fprintf('For the given Q(f) in Part d:\n\nQ(f)=%f\n\nE(f)=%f\n\n\n\n',Qf(4),Ef(4))


