//week06_3_push_translate_rotate_translate_box_pop
//
void setup(){
 size(500,500,P3D); 
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  
  translate(width/2,height/2);//滑鼠左鍵移動
  pushMatrix();//matrix保護
    translate(x,y);//以mouseDragged，x為滑鼠x座標的位移量，y為滑鼠y座標的位移量
    //要按下滑鼠右鍵才會轉
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount));
    translate(-50,0,0);//讓長方體右端放在圓形正中心
    box(100,30,30);
  popMatrix(); 
}
float x=0,y=0;
void mouseDragged(){
 x+= mouseX-pmouseX;//x+=滑鼠現在的x座標-之前滑鼠的x座標
 y+= mouseY-pmouseY;
}
