//week12_6_sound
//要有聲音，要用Library函式庫
//Sketch->Library->Managed Libraries搜尋sound
//找到sound|Provides a simple way......，下載
//file->Examples->Library核心函式庫->sound->Soundfile

import processing.sound.*;//抄範例
SoundFile mySound;//改變數

void setup(){
   size(400,400);
   mySound=new SoundFile(this,"music.mp3");
   mySound.play();
}
void draw(){
    
}
