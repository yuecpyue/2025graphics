//week02_3_void_setup_void_draw_stroke_if_mousePressed_line
void setup(){
  size(400,400);//ok視窗大小400x400
  background(255);//ok背景顏色白色
  fill(238);//ok填充色彩
  noStroke();
  float s=400/14;
  for(int i=0;i<14;i++){
    for(int j=0;j<14;j++){
      //rect(0,j*s*2,s,s);
      if( (i+j)%2==0 )  rect(j*s,i*s,s,s);
    }
   }
}
void draw(){
  stroke(255,0,0);//紅色的線
    if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
    //mouse按下去,就畫線
}
