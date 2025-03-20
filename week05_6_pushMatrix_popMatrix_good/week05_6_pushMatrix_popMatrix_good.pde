//week05_6_pushMatrix_popMatrix_good
//用「分接層」做事，比較好分辨
void setup(){
   size(400,400); 
}
void draw(){
   background(204);
   pushMatrix();
   translate(width/2,height/2);
   rotate(radians(frameCount)*5);
   rect(-50,-5,100,10);
   popMatrix();
   
   pushMatrix();
   translate(width/2-100,height/2);
   rotate(radians(frameCount)*5);
   rect(-50,-5,100,10);
   popMatrix();
}
