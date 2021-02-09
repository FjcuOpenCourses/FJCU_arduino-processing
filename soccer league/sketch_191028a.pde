import processing.serial.*; //import the Serial library
Serial myPort;

int joysitck[][]=new int [2][2];
int b; // variable holding the value from digital pin 2
String portName;
String val;
PImage mainScreen;
PImage playButton;
PImage inforButton;
PImage settingButton;
PImage backButton;
player[]a=new player[2];
int locatex=50;
int locatey=500;
boolean math=true;
march t1=new march();
int screen=1;
void setup(){
size(1500,1000);
mainScreen=loadImage("mainScreen.jpg");
playButton=loadImage("playButton.png");
inforButton=loadImage("inforButton.png");
backButton=loadImage("backButton.png");
settingButton=loadImage("settingButton.png");


for(int i=0;i<2;i++){
  a[i] = new player(int(random(215)),int(random(205)),int(random(235)),locatex,locatey);
  locatex+=1000;
}
 portName = "/dev/ttyACM0";    
  myPort = new Serial(this,"COM5",9600);
  myPort.bufferUntil('\n'); 
  }
  
  

void draw(){
  // read the data until the newline n appears
  val = myPort.readStringUntil('\n');
  
  if (val != null)
  {
        val = trim(val);
        
    // break up the decimal and new line reading
    int[] vals = int(splitTokens(val, ","));
    
    // we assign to variables
    println(vals[0]+","+vals[1]+","+vals[2]);
  joysitck[0][0] = vals[0];
joysitck[0][1]= vals[1] ;
joysitck[1][0]=vals[2];
joysitck[1][1]=vals[3];
   

  }
  if(screen==1){
     image(mainScreen,0,0,1500,1000);
  image(playButton,650,650,200,200);
  image(inforButton,900,650,200,200);
  
  if(mousePressed==true)
    screen=2;
  }

  
 if(screen==2){ 
  
    t1.feildDisplay();
for(int i=0;i<2;i++){
  a[i].display();
}

  noStroke();
  t1.ballDisPlay();
   textSize(50);
    text(t1.score1,700,100);
    text(t1.score2,770,100);
    image(inforButton,1400,0,100,100);
  for(int i=0;i<2;i++){
   
if(a[i].upPressed==true||joysitck[i][1]<200)
 a[i].up();
  
  if(a[i].downPressed==true||joysitck[i][1]>800)
  a[i].down();
  
  if(a[i].leftPressed==true||joysitck[i][0]<200)
 a[i].left();
  
  if(a[i].rightPressed==true|joysitck[i][0]>800)
 a[i].right();
  
  }
 

for(int i=0;i<2;i++){
    if(t1.ballx+25==a[i].x&&t1.bally>=a[i].y&&t1.bally<=a[i].y+50)
          t1.ballx-=5;
    if(t1.ballx-75==a[i].x&&t1.bally>=a[i].y&&t1.bally<=a[i].y+50)
          t1.ballx+=5;
    if(t1.bally+25==a[i].y&&t1.ballx>a[i].x&&t1.ballx<a[i].x+50)
          t1.bally-=5;
    if(t1.bally-75==a[i].y&&t1.ballx>a[i].x&&t1.ballx<a[i].x+50)
          t1.bally+=5;
} 
if(t1.ballx>=1450&&t1.bally>=375&&t1.bally<=650){
         t1.score1 += 1;
         t1.newScore();
         for(int i=0;i<2;i++)
           a[i].back();}


if(t1.ballx<=75&&t1.bally>=375&&t1.bally<=650){
        t1.score2+=1;
        t1.newScore();
         for(int i=0;i<2;i++)
           a[i].back();}

textSize(200);

if((t1.score1==5||t1.score2==5)){
  if(t1.score2==5){
        text("P2 win",650,500);
        delay(2000);
}
if(t1.score1==5){
        text("P1 win",650,500);
      
}
if(mousePressed==true){
    screen=1;
  t1.score2=0;
  t1.score1=0;
  

}
}
 }
}

 void keyPressed(){
    if(key == 'i'){
       a[1].upPressed=true;
  }
    if(key=='k'){
  a[1].downPressed=true;
  }
  if(key == 'j'){
 a[1].leftPressed=true;
  }
  if(key=='l'){
 a[1].rightPressed=true;
  }
  
  if(key == 'w'){
 a[0].upPressed=true;
  }
  if(key == 'a'){
a[0].leftPressed=true;
  }
  if(key == 's'){
 a[0].downPressed=true;
  }
  if(key == 'd'){
  a[0].rightPressed=true;
  }
   
  
}


void keyReleased(){
    if(key == 'i'){
       a[1].upPressed=false;
  }
    if(key=='k'){
  a[1].downPressed=false;
  }
  if(key == 'j'){
 a[1].leftPressed=false;
  }
  if(key=='l'){
 a[1].rightPressed=false;
  }
  
  if(key == 'w'){
 a[0].upPressed=false;
  }
  if(key == 'a'){
a[0].leftPressed=false;
  }
  if(key == 's'){
 a[0].downPressed=false;
  }
  if(key == 'd'){
  a[0].rightPressed=false;
  }
}
 /*void serialEvent(Serial myPort) 
{
  // read the data until the newline n appears
  val = myPort.readStringUntil('\n');
  
  if (val != null)
  {
        val = trim(val);
        
    // break up the decimal and new line reading
    int[] vals = int(splitTokens(val, ","));
    
    // we assign to variables
    joyx = vals[0];
    joyy = vals[1] ;
    b = vals[2];

  }*/
