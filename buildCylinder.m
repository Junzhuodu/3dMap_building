function [v,f] = buildCylinder(xo,yo,zo,alpha,beta,gamma,p1,p2,p3,p4,p5,p6)

% Sample values
h = p1;     % height
ra = p2;   % radius

% Create constant vectors
tht = linspace(0,2*pi,100); z = linspace(0,h,20);

% Create cylinder
xa = repmat(ra*cos(tht),20,1); ya = repmat(ra*sin(tht),20,1);
za = repmat(z',1,100);

% To close the ends
x = [xa*0; flipud(xa); (xa(1,:))*0]; 
y = [ya*0; flipud(ya); (ya(1,:))*0];
z = [za; flipud(za); za(1,:)];
[X,Y,Z] = Transform(xo,yo,zo,alpha,beta,gamma,x,y,z);

[f,v]= surf2patch(X,Y,Z,'triangle'); 




end