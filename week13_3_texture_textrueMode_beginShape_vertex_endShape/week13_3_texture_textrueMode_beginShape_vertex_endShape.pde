//week13_3_texture_textrueMode_beginShape_vertex_endShape
//先把貼圖加入
PImage img;
void setup(){
  size(400,400,P3D);
  img=loadImage("chessboard.png");//把圖檔拉進來
  textureMode(NORMAL);//有各種貼圖模式
}
void draw(){
  background(128);
  beginShape();
    texture(img);
    vertex(40, 80, 0, 0);//4個頂點vertex的四邊形，裁出兩個三角形
    vertex(320, 20, 1, 0);
    vertex(380, 360, 1, 1);
    vertex(160, 380, 0, 1);
  endShape();
}
