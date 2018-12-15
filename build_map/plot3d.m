%% sphere
k = 5;
n = 2^k-1;
theta = pi*(-n:2:n)/n;
phi = (pi/2)*(-n:2:n)'/n;
X = cos(phi)*cos(theta);
Y = cos(phi)*sin(theta);
Z = sin(phi)*ones(size(theta));
% colormap([0 0 0;1 1 1])
C = hadamard(2^k);
surf(X,Y,Z,C);
axis square;
[f,v] = surf2patch(X,Y,Z);


%% cuboid

v=[0, 0, 0;0 5 0;3 5 0;3 0 0;0 0 4;0 5 4;3 5 4;3 0 4];
f= [1 2 3;1 3 4;2 6 7;2 7 3;4 3 7 ;4 7 8;1 5 8;1 8 4;1 2 6;1 6 5;5 6 7;5 7 8];
patch('Faces',f,'Vertices',v,'FaceColor','b');
view(30,30)
axis equal

%% cylinder

% Sample values
h = 20;     % height
ra = 10;   % radius

% Create constant vectors
tht = linspace(0,2*pi,100); z = linspace(0,h,20);

% Create cylinder
xa = repmat(ra*cos(tht),20,1); 
ya = repmat(ra*sin(tht),20,1);
za = repmat(z',1,100);

% To close the ends
x = [xa*0;flipud(xa); (xa(1,:))*0]; 
y = [ya*0;flipud(ya); (ya(1,:))*0];
z = [za;flipud(za); za(1,:)];

surf(x,y,z)




%% cone
h = 20 ;
r = 8;
N = 100;
[x,y,z] = cylinder([0 r],N);
z = z*h;
X = [x;(x(1,:))*0];
Y = [y;(y(1,:))*0];
Z = [z;z(2,:)];
[f,v] = surf2patch(X,Y,Z);
patch('Faces',f,'Vertices',v);
view(30,30)
axis equal

%% stl
[v,f,normals,name] = stlRead('femur_binary.stl');
[x,y] = meshgrid(v(:,1),v(:,2));



%% simple_cylinder
h = 20;
r = 8;
N = 100;
[x,y,z] = cylinder(r,N);
z = z*h;
X = [(x(1,:))*0;x;(x(1,:))*0];
Y = [(y(1,:))*0;y;(y(1,:))*0];
Z = [(z(1,:))*0;z;z(2,:)];
surf(X,Y,Z);


%%
clc, clear, close all;
h = 20 ;
r = 8;
N = 100;
[x,y,z] = cylinder([0 r],N);
z = z*h;
X = [x;(x(1,:))*0];
Y = [y;(y(1,:))*0];
Z = [z;z(2,:)];
[f1,v1] = surf2patch(X,Y,Z,'triangle');

v2=[0, 0, 0;0 50 0;30 50 0;30 0 0;0 0 40;0 50 40;30 50 40;30 0 40];
f2= [1 2 3;1 3 4;2 6 7;2 7 3;4 3 7 ;4 7 8;1 5 8;1 8 4;1 2 6;1 6 5;5 6 7;5 7 8];
v = [v2;v1];
a = size(v2);
f1 = f1 + a(1);

f = [f2;f1];

patch('Faces',f,'Vertices',v,'FaceColor','b');
view(30,30)
axis equal


%%  write stl file
tmpvol = false(20,20,20);      % Empty voxel volume
tmpvol(8:12,8:12,5:15) = 1;    % Turn some voxels on
fv = isosurface(~tmpvol, 0.5); % Make patch w. faces "out"
stlWrite('test.stl',fv)        % Save to binary .stl

