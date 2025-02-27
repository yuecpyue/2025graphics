//week02_8_homework_void
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
  noFill();
  strokeWeight(5);
  draw1();
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
void draw1(){
beginShape();
vertex(110, 28);
vertex(111, 28);
vertex(111, 29);
vertex(112, 31);
vertex(113, 31);
vertex(114, 33);
vertex(114, 34);
vertex(116, 36);
vertex(117, 37);
vertex(117, 39);
vertex(118, 39);
vertex(119, 40);
vertex(120, 41);
vertex(122, 43);
vertex(123, 44);
vertex(124, 44);
vertex(125, 45);
vertex(125, 46);
vertex(127, 48);
vertex(128, 49);
vertex(129, 50);
vertex(129, 52);
vertex(130, 52);
vertex(131, 53);
vertex(132, 56);
vertex(133, 58);
vertex(135, 60);
vertex(136, 60);
vertex(137, 61);
vertex(138, 62);
vertex(139, 63);
vertex(140, 63);
vertex(141, 64);
vertex(142, 64);
vertex(143, 64);
vertex(143, 65);
vertex(144, 65);
vertex(144, 66);
vertex(146, 67);
vertex(147, 69);
vertex(147, 70);
vertex(148, 72);
vertex(149, 74);
vertex(151, 75);
vertex(151, 76);
vertex(152, 76);
vertex(152, 77);
vertex(153, 77);
vertex(154, 77);
vertex(155, 78);
endShape();
}
