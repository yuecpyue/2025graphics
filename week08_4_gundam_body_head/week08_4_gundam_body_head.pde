//week08_4_gundam_body_head
//慢慢把「切割過」的模式組合起來
//加入 body.mtl,body.obj,Diffuse.jpg,AO.jpg
PShape body,head;
//加入 head.mtl,head.obj
void setup(){
  size(400,400,P3D);
  body=loadShape("body.obj");
  head=loadShape("head.obj");
}
void draw(){
  background(255);
  translate(width/2,height/2+100);
  sphere(10);//基準點
  scale(10,-10,10);
  
  pushMatrix();
    translate(0,0,22.5);//3.放回原來的地方
    rotate(radians(x));//2.轉動
    //translate(x/10,y/10);//要放在x,y座標
    //println(x/10,y/10);//印出x,y座標
    translate(0,0,-22.5);//1.把頭的中心，放在旋轉中心
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y-=mouseY-pmouseY;
}
