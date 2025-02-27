//week02_7_keyPressed_if_key_s_for_println_vertex_beginShape_endShape
//把畫的部分存檔
ArrayList<Integer> x, y;//新建2個小的資料結構，等按下滑鼠在新增
ArrayList<ArrayList<Integer>> xx=new ArrayList<ArrayList<Integer>>();//新建大的資料結構
ArrayList<ArrayList<Integer>> yy=new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img=loadImage("fubuki.png");//記得把圖片拉到程式裡
}
void draw(){
  background(img); 
  fill(255,172);//半透明的色彩，白色，alpha值是128
  rect(0,0,400,400);//最大的四邊形，全部蓋住
  //上面為week02_4，下面用迴圈，從資料結構取出來
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer> x=xx.get(I);
    ArrayList<Integer> y=yy.get(I); 
    for(int i=1;i<x.size();i++){//小的，再照舊的畫
       line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void keyPressed(){
  if(key=='s'|| key=='S'){//按下大小寫的S，想save存檔
    for(int I=0;I<xx.size();I++){
      ArrayList<Integer> x=xx.get(I);
      ArrayList<Integer> y=yy.get(I); 
      println("beginShape();");
      for(int i=1;i<x.size();i++){//小的，再照舊的畫
        println("vertex("+x.get(i)+", "+y.get(i)+");");//改在keyPressed()按下s or S時，再全部印
      }
      println("endShape();");
    }
  }
}
void mouseDragged(){
  //println("vertex(mouseX,mouseY);");錯的
  //println("vertex("+mouseX+", "+mouseY+");");不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時，建「新的」資料結構
   x=new ArrayList<Integer>(); xx.add(x);
   y=new ArrayList<Integer>(); yy.add(y);
}
