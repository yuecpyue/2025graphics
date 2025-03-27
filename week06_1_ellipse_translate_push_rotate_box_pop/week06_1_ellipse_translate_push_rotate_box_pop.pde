//week06_1_ellipse_translate_push_rotate_box_pop
//模仿第四週的程式
void setup(){
 size(500,500,P3D); 
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);
  pushMatrix();//matrix保護
    //要按下滑鼠才會轉
    if(mousePressed) rotateZ(radians(frameCount));
    box(100,30,30);
  popMatrix();  
}
