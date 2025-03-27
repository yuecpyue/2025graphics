//week06_4_sphere_box_push_T_R_T_box_pop
//組合出機器手臂
void setup(){
 size(500,400,P3D); 
}
void draw(){
  background(255);//step00
  translate(width/2,height/2);//step00
  sphere(10);//step04放圓球，當世界的中心
  
  box(200,50,25);//step05手肘

  fill(252,131,77);
  
  pushMatrix();//step03
    translate(x,y);//step06
    if(mousePressed) rotateZ(radians(frameCount));//step03
    translate(25,0,0);//step02讓左端放中心
    box(50,25,50);//step01
    
  popMatrix();//step03
}
float x=0,y=0;//step06會動的位置
void mouseDragged(){//step06
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   print("x:" + x + " y:" + y+"\n");//step07印出來
}
