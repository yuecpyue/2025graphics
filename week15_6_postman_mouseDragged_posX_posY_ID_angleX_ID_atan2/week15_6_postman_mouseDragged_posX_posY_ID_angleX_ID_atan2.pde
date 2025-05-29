//week15_6_postman_mouseDragged_posX_posY_ID_angleX_ID_atan2
//修改自week11_3_postman_again
//重來一次，熟悉架構
PImage postman,head,body,uparm1,hand1,uparm2,hand2,foot1,foot2;
void setup(){//把圖加入程式裡
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uparm1=loadImage("uparm1.png");
  hand1=loadImage("hand1.png");
  uparm2=loadImage("uparm2.png");
  hand2=loadImage("hand2.png");
  foot1=loadImage("foot1.png");//增加腳
  foot2=loadImage("foot2.png");//增加腳
}
float[] angleX=new float[10];
float[] angleY=new float[10];
int ID=0;//一開始為頭
ArrayList<String> lines=new ArrayList<String>();
void keyPressed(){
    if(key=='s'){
     String now=" ";//空字串
     for(int i=0;i<10;i++){
        now+=angleX[i]+" ";//後面加空格
        now+=angleY[i]+" ";//後面加空格
     }
     lines.add(now);
     String [] arr=new String[lines.size()];
     lines.toArray(arr);
     saveStrings("angles.txt",arr);
     println("現在存檔:"+ now);
    }
    if(key=='r'){
      String[] file=loadStrings("angles.txt");
      if(file!=null){
         for(int i=0;i<file.length;i++){
           lines.add(file[i]);
           println("現在讀檔"+file[i]);
         }
      }
    }
   if(key=='p') playing=!playing;//按下p切換
   if(key=='1') ID=1;//左邊手臂
   if(key=='2') ID=2;//左邊手肘
   if(key=='3') ID=3;//右邊手臂
   if(key=='4') ID=4;//右邊手肘
   if(key=='5') ID=5;//左腳
   if(key=='6') ID=6;//右腳
   if(key=='0') ID=0;//頭
}
boolean playing=false;//一開始false
void mouseDragged(){
   //把原本mouseX的左右移動改為IK
   //從頭的地方找到位置translate(236, 230);
   float dx=mouseX-236,dy=mouseY-230;
   angleX[0]=degrees(atan2(dy,dx))+90;//頭的角度
   //angleX[ID]+=mouseX-pmouseX; 
   //angleY[ID]+=mouseY-pmouseY; //<-多了這行
}
int R=0;
void myInterpolate(){
   if(lines.size()>=2){//要有兩行以上，才可以
     float alpha=(frameCount%30)/30.0;
     if(alpha==0.0) R=(R+1)%lines.size();
     int R2=(R+1)%lines.size();
     float[] oldAngle=float(split(lines.get( R ),' '));
     float[] newAngle=float(split(lines.get( R2 ),' '));
     for(int i=0;i<10;i++){
        angleX[i]=oldAngle[i*2+0]*(1- alpha)+newAngle[i*2+0]*alpha;
        angleY[i]=oldAngle[i*2+1]*(1- alpha)+newAngle[i*2+1]*alpha;
     }
   }
}
void draw(){
  background(#FFFFF2);
  if(playing) myInterpolate();
  image(body,0,0);//畫身體
  
  pushMatrix();
    translate(236, 230);//放回
    rotate(radians(angleX[0]));
    translate(-236, -230);//把旋轉中心移動
    image(head,0,0);//畫頭
  popMatrix(); 
  
  pushMatrix();//foot1
    translate(220,375);
    rotate(radians(angleX[5]));
    translate(-220,-375);
    image(foot1,0,0);
  popMatrix();
  
  pushMatrix();//foot2
    translate(260,375);
    rotate(radians(angleX[6]));
    translate(-260,-375);
    image(foot2,0,0);
  popMatrix();
  
  pushMatrix();
    translate(195,262);
    rotate(radians(angleX[1]));
    translate(-195,-262);
    image(uparm1,0,0);//左手臂
    pushMatrix();
      translate(115,265);
      rotate(radians(angleX[2]));
      translate(-113,-265);
      image(hand1,0,0);//左手肘
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(290,260);
    rotate(radians(angleX[3]));
    translate(-290,-260);
    image(uparm2,0,0);//右手臂
    pushMatrix();
      translate(355,255);
      rotate(radians(angleX[4]));
      translate(-355,-255);
      image(hand2,0,0);//右手肘
    popMatrix();
  popMatrix();
}
float [] posX={236,195,115,290,355,220,260};
float [] posY={230,262,265,260,255,375,375};
