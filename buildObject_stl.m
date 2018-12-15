function [v,f,name] = buildObject_stl(xo,yo,zo,alpha,beta,gamma,p1,p2,p3,p4,p5,p6)

[v,f,normals,name] = stlRead(p1);
X = 10*v(:,1);
Y = 10*v(:,2);
Z = 10*v(:,3);
[Wx,Wy,Wz] = Transform(xo,yo,zo,alpha,beta,gamma,X,Y,Z);
v(:,1) = Wx;
v(:,2) = Wy;
v(:,3) = Wz;




end
