//week09_2_gundam_head_body_push_trt_pop
PShape body,head;
void setup(){
  size(400,400,P3D); 
  body=loadShape("body.obj");
  head=loadShape("head.obj");
}
void draw(){
  background(204);
  translate(200,300);
  sphere(10);
  
  scale(10,-10,10);//y要上下顛倒在反過來
  
  shape(body,0,0);
  
  pushMatrix();
    translate(0,22.5);
    rotateY(radians(mouseX-200));
    rotateX(radians(mouseX-60));
    translate(0,-22.5);
    shape(head,0,0);
  popMatrix();
}
