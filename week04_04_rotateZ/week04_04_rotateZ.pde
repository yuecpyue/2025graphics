//week04_04_rotateZ
void setup(){
 size(400,400,P3D); 
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //rotateY(radians(mouseX));//左右轉(上週)
  rotateZ(radians(mouseX));//上下轉(本周)
  ellipse(0,0,100,150);
}
