//week08_1_loadShape_shape
//3D模型
size(400,400, P3D);//3.要有3D功能
PShape gundam=loadShape("Gundam.obj");//1.讀入3D模型
translate(width/2,height/2);//移動到畫面中心

pushMatrix();
  translate(0,100);
  scale(10,-10,10);//4.放大10倍,上下顛倒
  shape(gundam,0,0);//2.畫出3D模型
popMatrix();
