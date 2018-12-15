clc, clear, close all

% % % build the world
figure(1)
plot3([0 0], [0 0], [0 100], 'k', 'LineWidth', 2)
axis([0 100 0 100 0 100])
hold on 
grid on
plot3([0 100], [0 0], [0 0], 'k', 'LineWidth', 2)
plot3([0 0], [0 100], [0 0], 'k', 'LineWidth', 2)
xlabel('world_x')
ylabel('world_y')
zlabel('world_z')



%%%%%build sphere

[v1,f1] = buildSphere(50,50,50,0,0,0,20,0,0,0,0,0);

stlPlot(v1,f1,'Sphere','b');

%%build cylinder
[v2,f2] = buildCylinder(50,10,10,-90,0,90,20,10,0,0,0,0);
stlPlot(v2,f2,'Cylinder','g')

%%%build cuboid

[v3,f3] = buildCuboid(70,70,70,30,30,30,20,30,40,0,0,0);
stlPlot(v3,f3,'Cuboid','b');

%%% build cone
[v4,f4] = buildCone(70,40,40,0,0,90,40,20,0,0,0,0);
stlPlot(v4,f4,'Cone','g');



%%%build stl object
[v5,f5,name] = buildObject_stl(20,40,20,30,30,30,'femur_binary.stl',0,0,0,0,0);
stlPlot(v5,f5,name,'r');


% %%%%write out
% v = [v1;v2;v3;v4;v5];
% a1 = size(v1);
% a2 = size(v2);
% a3 = size(v3);
% a4 = size(v4);
% 
% f2 = f2 + a1(1);
% f3 = f3 + a1(1) + a2(1);
% f4 = f4 + a1(1) + a2(1) + a3(1);
% f5 = f5 + a1(1) + a2(1) + a3(1) + a4(1);
% 
% f = [f1;f2;f3;f4;f5];
% stlPlot(v,f,'whole_map','g');
% 
% stlWrite('test.stl',f,v);
% 



