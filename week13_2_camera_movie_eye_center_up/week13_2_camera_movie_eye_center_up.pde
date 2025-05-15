//week13_2_camera_movie_eye_center_up
//電腦圖學繪圖時，會設定camera的相關係數
import processing.video.*;
Movie movie;
void setup(){
  size(720,480,P3D);//影片解析度720x480
  movie=new Movie(this,"street.mov");
  movie.loop();
}
void draw(){
  background(128);
  camera(mouseX,mouseY, 500, 360, 240, 0, 0, 1, 0);//eyeX,eyeY,eyeZ,centerX,centerY,centerZ,upX,upY,upZ
  if(movie.available()) movie.read();
  image(movie,0,0);
}
