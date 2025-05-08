//week12_3_gundam_head_body_left_keyPressed_ID
//修改week12_2
PShape body,head,uparm1,upuparm1,hand1;
void setup(){
  size(400,400,P3D); 
  body=loadShape("body.obj");
  head=loadShape("head.obj");
  uparm1=loadShape("uparm1.obj");
  upuparm1=loadShape("upuparm1.obj");
  hand1=loadShape("hand1.obj");
}
float[] angleX=new float[20];
float[] angleY=new float[20];
int ID=0;//0:頭,1:上上手臂,2:上手臂,3:手
void mouseDragged(){
   angleX[ID]+=radians(mouseX-pmouseX);
   angleY[ID]+=radians(mouseY-pmouseY);
}
void keyPressed(){ //注意輸入法
    if(key=='1') ID=1;//還沒上上手臂
    if(key=='2') ID=2;//OK上手臂
    if(key=='3') ID=3;//OK手
    if(key=='4') ID=4;
    if(key=='5') ID=5;
    if(key=='6') ID=6;
    if(key=='7') ID=7;
    if(key=='8') ID=8;
    if(key=='9') ID=9;
    if(key=='0') ID=0;//OK頭
}
void draw(){
  background(204);
  translate(200,300);
  sphere(10);
  scale(10,-10,10);//y要上下顛倒在反過來
  shape(body,0,0);
  
  pushMatrix();
    translate(0,22.5);
    rotateY(angleX[0]);//x方向 左右拖曳 對Y軸轉
    rotateX(angleY[0]);//y方向 上下拖曳 對X軸轉
    translate(0,-22.5);
    shape(head,0,0);
  popMatrix();
  pushMatrix();
    shape(upuparm1,0,0);//上上手臂
    pushMatrix();
      translate(-4.1,19.9);//再放回原來位置
      //rotateZ(radians(mouseX));
      rotateZ(angleY[2]);
      rotateY(angleX[2]);
      translate(4.1,-19.9);//移動物體的旋轉中心
      
      shape(uparm1,0,0);//上手臂
      pushMatrix();
        translate(-4.5,16.9);
        rotateX(angleY[3]);
        rotateY(angleX[3]);
        translate(4.5,-16.9);
        //translate(mouseX/10.0,-mouseY/10.0);//一邊移動一邊找數值
        //println(mouseX/10.0,-mouseY/10.0);//印出數值，發現4.5,-16.9
        shape(hand1,0,0);
      popMatrix();
    popMatrix();
  popMatrix();
}
