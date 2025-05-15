//week13_6_combine_all_Movie_Capture_PImage_camera_sin_cos_P3D
//把今天教的全加入
import processing.video.*;
Movie movie;
PImage img;
void setup(){
   size(400,400,P3D);
   movie=new Movie(this,"street.mov");
   movie.loop();
   img=loadImage("chessboard.png");
   textureMode(NORMAL);
   video=new Capture(this,640,480);
   video.start();
}
Capture video;
void draw(){
  camera(200, 200, 200, 200-cos(radians(frameCount)), 200, 200+sin(radians(frameCount)),0,1,0);
  background(128);
  if(movie.available()) movie.read();
  beginShape();
    texture(img);
    vertex(0, 0, 0, 0, 0);
    vertex(400, 0, 0, 1, 0);
    vertex(400, 400, 0, 1, 1);
    vertex(0, 400, 0, 0, 1);
  endShape();
  image(movie,0,0,360,240);
  if(video.available()) video.read();
  beginShape();
    texture(video);//左邊的牆，直接放視訊畫面，把視訊畫面當成貼圖
    vertex(0, 0, 0, 0, 0);
    vertex(0, 400, 0, 1, 0);
    vertex(0, 400, 400, 1, 1);
    vertex(0, 0, 400, 0, 1);
  endShape();
}
