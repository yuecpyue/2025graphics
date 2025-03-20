//week05_4_translate_mouseX_mouseY_rotate_radians_frameCount
//比較rotate與translate的順序
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  //畫東西之前要先移動，要先知道滑鼠位移到哪裡，再移動下面圖形的x,y座標
  translate(mouseX,mouseY);
  rotate(radians(frameCount));//1s=60frame，轉60度，再變成radians弧度
  rect(-50,-5,100,10);//rect(x,y,w,h)，座標在(-50,-5)，寬高為100x10
  
}
