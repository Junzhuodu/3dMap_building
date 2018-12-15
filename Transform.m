function [Wx, Wy, Wz] = Transform(xo,yo,zo,alpha,beta,gamma,X,Y,Z)

alpha = alpha*pi/180;
beta = beta*pi/180;
gamma = gamma*pi/180;
r11 = cos(alpha)*cos(beta);
r12 = cos(alpha)*sin(beta)*sin(gamma) - sin(alpha)*cos(gamma);
r13 = cos(alpha)*sin(beta)*cos(gamma) + sin(alpha)*sin(gamma);
r21 = sin(alpha)*cos(beta);
r22 = sin(alpha)*sin(beta)*sin(gamma) + cos(alpha)*cos(gamma);
r23 = sin(alpha)*sin(beta)*cos(gamma) - cos(alpha)*sin(gamma);
r31 = -sin(beta);
r32 = cos(beta)*sin(gamma);
r33 = cos(beta)*cos(gamma);

Wx = r11*X + r12*Y + r13*Z + xo;
Wy = r21*X + r22*Y + r23*Z + yo;
Wz = r31*X + r32*Y + r33*Z + zo;

end
