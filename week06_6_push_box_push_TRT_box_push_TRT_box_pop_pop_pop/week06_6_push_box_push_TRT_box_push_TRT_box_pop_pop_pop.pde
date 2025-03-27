//week06_6_push_box_push_TRT_box_push_TRT_box_pop_pop_pop
//組合出機器手臂
void setup(){
 size(500,400,P3D); 
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  fill(252,131,77);
  
  pushMatrix();//step04 push
  //step05往右縮一個tab
    box(50,200,25);//step03手臂
    
    pushMatrix();
      translate(x,y);//step03:接到手肘上，觀察到 0,-100
      if(mousePressed) rotateZ(radians(frameCount));//step02把旋轉放入
      translate(100,0);//step01:把手肘的移動量放入
      box(200,50,25);//手肘
  
      pushMatrix();
        translate(100,0);
        rotateZ(radians(frameCount));
        translate(25,0,0);
        box(50,25,50);//小手腕
      popMatrix();
    popMatrix();
   popMatrix();//step04 pop
}
float x=0,y=0;//會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   print("x:" + x + " y:" + y+"\n");//印出來
}
