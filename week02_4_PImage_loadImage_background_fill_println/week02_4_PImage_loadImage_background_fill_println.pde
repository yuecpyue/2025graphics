//week02_4_PImage_loadImage_background_fill_println
//開始描圖
PImage img;
void setup(){
  size(400,400);
  img=loadImage("fubuki.png");
}
void draw(){
  background(img); 
  fill(255,mouseX);//半透明的色彩，白色，alpha值是128
  println(mouseX);//把mouseX的座標顯示在下方的小黑裡
  rect(0,0,400,400);//最大的四邊形，全部蓋住
  
}
