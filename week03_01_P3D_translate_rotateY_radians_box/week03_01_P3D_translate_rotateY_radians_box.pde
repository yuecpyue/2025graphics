//week03_01_P3D_translate_rotateY_radians_box
void setup(){
   size(400,400,P3D);//開啟3D
} 
void draw(){
    background(128);//灰色背景
    translate(mouseX,mouseY);
    rotateY(radians(frameCount));
    box(200);//大小200box
}
