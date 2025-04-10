//week08_2_PShape_gundam_setup_draw_push_scale_shape_pop
//轉動它，要改為互動模式的程式
PShape gundam;//再把檔案拉進程式裡
void setup(){
 size(400,400,P3D); 
 gundam=loadShape("Gundam.obj");
}
void draw(){
  background(128);
  translate(width/2,height/2+100);
  pushMatrix();
    scale(10,-10,10);
    rotateY(radians(frameCount));//new
    shape(gundam,0,0);
  popMatrix();
  pushMatrix();
    translate(100,0,0);
    scale(10,-10,10);
    shape(gundam,0,0);
  popMatrix();
}
