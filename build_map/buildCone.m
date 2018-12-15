
function [v,f] = buildCone(xo,yo,zo,alpha,beta,gamma,p1,p2,p3,p4,p5,p6)

h = p1 ;
r = p2;
N = 100;
[x,y,z] = cylinder([0 r],N);
z = z*h;
x = [x;(x(1,:))*0];
y = [y;(y(1,:))*0];
z = [z;z(2,:)];
[Wx,Wy,Wz] = Transform(xo,yo,zo,alpha,beta,gamma,x,y,z);
[f,v] = surf2patch(Wx,Wy,Wz,'triangle'); 


end