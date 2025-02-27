//week02_6_ArrayList_ArrayList_Integer_for_for_mousePressed_new_add
//不要「一筆畫」直接接著畫
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
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時，建「新的」資料結構
   x=new ArrayList<Integer>(); xx.add(x);
   y=new ArrayList<Integer>(); yy.add(y);
}
