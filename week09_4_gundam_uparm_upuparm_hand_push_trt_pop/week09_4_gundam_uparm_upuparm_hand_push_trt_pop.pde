//week09_3_gundam_uparm_upuparm_push_trt_pop
PShape uparm1,upuparm1;
void setup(){
 size(400,400,P3D);
 uparm1=loadShape("uparm1.obj");
 upuparm1=loadShape("upuparm1.obj");
}
void draw(){
  background(204);
  translate(200,300);
  
  sphere(3);
  
  scale(10,-10,10);
  shape(upuparm1,0,0);//上上手臂
  pushMatrix();
    translate(-4.1,19.9);//再放回原來位置
    rotateX(radians(mouseY));
    translate(4.1,-19.9);//移動物體的旋轉中心
    //translate(mouseX/10.0,-mouseY/10.0);//一邊移動一邊找數值
    //println(mouseX/10.0,-mouseY/10.0);//印出4.1,-19.9
    shape(uparm1,0,0);//上手臂
  popMatrix();
}
