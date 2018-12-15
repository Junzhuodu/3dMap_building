function [v, f] = buildCuboid(xo,yo,zo,alpha,beta,gamma,p1,p2,p3,p4,p5,p6)


 
transf = @Transform;
[x1,y1,z1]  = transf(xo,yo,zo,alpha,beta,gamma,0,0,0);
[x2,y2,z2] = transf(xo,yo,zo,alpha,beta,gamma,0,p2,0);
[x3,y3,z3] = transf(xo,yo,zo,alpha,beta,gamma,p1,p2,0);
[x4,y4,z4] = transf(xo,yo,zo,alpha,beta,gamma,p1,0,0);
[x5,y5,z5] = transf(xo,yo,zo,alpha,beta,gamma,0,0,p3);
[x6,y6,z6] = transf(xo,yo,zo,alpha,beta,gamma,0,p2,p3);
[x7,y7,z7] = transf(xo,yo,zo,alpha,beta,gamma,p1,p2,p3);
[x8,y8,z8] = transf(xo,yo,zo,alpha,beta,gamma,p1,0,p3);

v = [x1 y1 z1;x2 y2 z2;x3 y3 z3;x4 y4 z4;x5 y5 z5;x6 y6 z6;x7 y7 z7;x8 y8 z8];
f = [1 2 3;1 3 4;2 6 7;2 7 3;4 3 7 ;4 7 8;1 5 8;1 8 4;1 2 6;1 6 5;5 6 7;5 7 8];

end