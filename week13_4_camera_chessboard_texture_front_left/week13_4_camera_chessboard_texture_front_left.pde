//week13_4_camera_chessboard_texture_front_left
//把貼圖和camera整合起來
PImage img;
void setup(){
  size(400,400,P3D);
  img=loadImage("chessboard.png");
  textureMode(NORMAL);
}
void draw(){
  camera(mouseX, 200, mouseY, mouseX, 200, mouseY-10, 0, 1, 0);
  background(128);
  beginShape();//正前方,z座標都是0
    texture(img);
    vertex(0, 0, 0, 0, 0);//x,y,z,u,v
    vertex(400, 0, 0, 1, 0);
    vertex(400, 400, 0, 1, 1);
    vertex(0, 400, 0, 0, 1);
  endShape();
  
  beginShape();//左方，x座標都是0
    texture(img);
    vertex(0, 0, 0, 0, 0);//x,y,z,u,v
    vertex(0, 400, 0, 1, 0);
    vertex(0, 400, 400, 1, 1);
    vertex(0, 0, 400, 0, 1);
  endShape();
}
