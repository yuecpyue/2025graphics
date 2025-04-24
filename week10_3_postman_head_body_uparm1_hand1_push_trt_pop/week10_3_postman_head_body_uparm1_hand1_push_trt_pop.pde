//week10_3_postman_head_body_uparm1_hand1_push_trt_pop
PImage postman,head,body,uparm1,hand1;
void setup(){
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uparm1=loadImage("uparm1.png");
  hand1=loadImage("hand1.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0); //postman全身
  fill(255, 0, 255, 128);//半透明的紫色
  rect(0, 0, 560, 560);
  pushMatrix();
    translate(195,262);
    //rotate(radians(mouseX));
    translate(-195,-262);
    image(uparm1,0,0);
    pushMatrix();
      translate(115,265);
      rotate(radians(mouseX));
      translate(-113,-265);
      image(hand1,0,0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(236, 230);//放回
    //rotate(radians(mouseX));
    translate(-236, -230);//把旋轉中心放到(0,0)
    image(head,0,0);//畫頭
  popMatrix();   
  image(body,0,0);//畫身體
}
