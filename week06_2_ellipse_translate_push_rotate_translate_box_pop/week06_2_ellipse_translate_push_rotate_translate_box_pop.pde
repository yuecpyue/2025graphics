//week06_2_ellipse_translate_push_rotate_translate_box_pop
//再加入一個移動，把物體移動到「轉盤的中心」
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
    translate(-50,0,0);
    box(100,30,30);
  popMatrix();  
}
