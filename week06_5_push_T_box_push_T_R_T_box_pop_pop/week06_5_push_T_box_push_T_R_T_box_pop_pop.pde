//week06_5_push_T_box_push_T_R_T_box_pop_pop
//組合出機器手臂
void setup(){
 size(500,400,P3D); 
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  fill(252,131,77);
  
  pushMatrix();//step04 新的一組
    translate(x,y);//step05 新的轉動
    //step03往右縮排
    box(200,50,25);//step05手肘

    pushMatrix();//step03往右縮排
      translate(100,0);//step01 把前一步發現放100,0
      //if(mousePressed) rotateZ(radians(frameCount));//step02把mousePressed刪掉
      rotateZ(radians(frameCount));//step02 只轉動
      translate(25,0,0);//讓左端放中心
      box(50,25,50);//小手腕
    popMatrix();//step03往右縮排
  popMatrix();//step04 新的一組
}
float x=0,y=0;//會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   print("x:" + x + " y:" + y+"\n");//印出來
}
