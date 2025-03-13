//week04_10_earth_creatShape_setTexture_shape
//google:processing earth texture 可以找到程式，string後要記得補分號
size(400,400,P3D);
PShape earth=createShape(SPHERE,100);
PImage img=loadImage("earth.jpg");
earth.setTexture(img);
shape(earth);
