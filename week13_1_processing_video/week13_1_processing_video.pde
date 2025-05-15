//week13_1_processing_video
//Sketch->Library->Managed Libraries搜尋video  安裝Video Library for Processing 4

import processing.video.*;//java使用外掛的「匯入」

Capture video;//有視訊鏡頭的版本
Movie movie;//沒鏡頭的版本

void setup(){
    size(640,960);
    video=new Capture(this,640,480);
    video.start();//開啟視訊
    movie=new Movie(this,"street.mov");//讀檔案
    movie.loop();
}
void draw(){
  if(video.available()) video.read();//沒鏡頭註解掉
  image(video,0,480);//沒鏡頭註解掉
  if(movie.available()) movie.read();
  image(movie,0,0);
}
