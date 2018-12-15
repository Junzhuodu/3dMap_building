# 3dMap_building
Create "stl" format map for simulation

## Build objects through matlab
Build objects, such as Cone, Cuboid, Cylinder, Sphere through matlab.

```sh
buildCone, buildCuboid, buildCylinder, buildSphere
```

## Build stl object
Read stl object through stlTools and then combine with other objects.

```sh
buildObject_stl
```

## Transform
Rotate and translate every object to the specified location in 3D map.

```Transform```

## Create a stl map for simulation
Put all objects to one world and output a "stl" format map.

```sh
plot3d, buildmap
```
