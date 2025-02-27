//week02_5a_combine_02_4_and_week02_3_bad
//要描圖，卻出錯
PImage img;
void setup(){
  size(400,400);
  img=loadImage("fubuki.png");
}
void draw(){
  background(img); 
  fill(255,172);//半透明的色彩，白色，alpha值是128
  noStroke();
  rect(0,0,400,400);//最大的四邊形，全部蓋住
  
  stroke(255,0,0);//紅色的線
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
  //mouse按下去,就畫線
}
