//week15_01_multiple_windows
//google:processing multiple windows
//File->Exmaple->test->multiple windows
void setup(){
  size(300,200);
  background(255,0,0);
  WindowB child=new WindowB();//請WindowB啟動
}
void draw(){
  
}
class WindowB extends PApplet{
    public WindowB(){//「建構子」constructor
       super();//呼叫上一層「建構子」
       PApplet.runSketch(new String[]{this.getClass().getName()}, this);
    }
    public void settings(){
       size(300,200); 
    }
    public void setup(){
       //size(300,200);
       background(0,255,0);
    }
    public void draw(){
              
    }
}
