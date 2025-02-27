//week02_5_ArrayList_Integer_new_for_size_get_add_mouseDragged
//利用資料結構，把滑鼠的歷史軌跡記起來
ArrayList<Integer> x=new ArrayList<Integer>();//新建資料結構
ArrayList<Integer> y=new ArrayList<Integer>();
PImage img;
void setup(){
  size(400,400);
  img=loadImage("fubuki.png");//記得把圖片拉到程式裡
}
void draw(){
  background(img); 
  fill(255,172);//半透明的色彩，白色，alpha值是128
  rect(0,0,400,400);//最大的四邊形，全部蓋住
  //上面為week02_4，下面
  for(int i=1;i<x.size();i++){
    line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
