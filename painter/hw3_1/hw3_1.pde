void setup(){
  
size(600,800);
frameRate(1);
fill(255,255,255);
rect(525,130,100,20);//next
rect(525,190,100,20);//pre
rect(525,250,100,20);//random
rect(525,310,100,20);//next
rect(525,420,100,20);//pre
rect(525,530,100,20);//save
fill(0);
text("Next",527,150);
text("Pre",527,200);
text("Random",527,260);
text("Next",527,320);
text("Pre",527,430);
text("Save",527,540);

}
void draw(){
  int num1=1;
  int num2=1;
  PImage Front = loadImage(num1 + "t.jpg");
PImage Back = loadImage(num2 + "b.jpg");
image(Front, 0, 0);
image(Back, 0, 400);
  if(mouseX>=520&&mouseX<620&&mouseY>=250&&mouseY<270&&mousePressed==true){
int front = int(random(1, 20)); // Select the front card
int back = int(random(1, 20)); // Select the back card
PImage imgFront = loadImage(front + "t.jpg");
PImage imgBack = loadImage(back + "b.jpg");
image(imgFront, 0, 0);
image(imgBack, 0, 400);
  }
  if(mouseX>=520&&mouseX<=620&&mouseY>=530&&mouseY<=550){
    save("111.jpg");
  }
}
