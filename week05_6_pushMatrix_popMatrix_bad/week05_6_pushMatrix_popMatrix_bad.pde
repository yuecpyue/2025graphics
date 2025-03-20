//week05_6_pushMatrix_popMatrix_bad
//用「分接層」做事，比較好分辨
void setup(){
   size(400,400); 
}
void draw(){
   background(204);
   
   translate(width/2,height/2);
   rotate(radians(frameCount)*5);
   rect(-50,-5,100,10);
   
   //希望在左邊-100的地方，也有一個旋轉的，但受到前面的移動影響
   translate(width/2-100,height/2);
   rotate(radians(frameCount)*5);
   rect(-50,-5,100,10);
}
