function [v,f] = buildSphere(xo,yo,zo,alpha,beta,gamma,p1,p2,p3,p4,p5,p6)
n = 100;
[x,y,z] = sphere(n);
x = p1*x;
y = p1*y;
z = p1*z;
[X,Y,Z] = Transform(xo,yo,zo,alpha,beta,gamma,x,y,z);

fvc = surf2patch(X,Y,Z,'triangle');
v = fvc.vertices;
f = fvc.faces;


end
