//week06_7_push_RRT_many_TRT_inside_pop
//組合出機器手臂
void setup(){
 size(500,800,P3D); //step00:視窗放大
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  fill(252,131,77);
  
  pushMatrix();
    if(mousePressed &&mouseButton==RIGHT) rotateY(radians(frameCount));//step03:右鍵旋轉
    if(mousePressed &&mouseButton==RIGHT) rotateZ(radians(frameCount));//step02:右鍵對y旋轉
    translate(0,-100);//step01:向上抬升到0,-100，把關節移動到中心
    box(50,200,25);//手臂
    
    pushMatrix();
      translate(0,-100);//step00:x,y改為剛觀察的0,-100
      //if(mousePressed) //step00:刪掉
      rotateZ(radians(frameCount));
      translate(100,0);
      box(200,50,25);//手肘
  
      pushMatrix();
        translate(100,0);
        rotateZ(radians(frameCount));
        translate(25,0,0);
        box(50,25,50);//小手腕
      popMatrix();
    popMatrix();
   popMatrix();
}
float x=0,y=0;//會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   print("x:" + x + " y:" + y+"\n");//印出來
}
