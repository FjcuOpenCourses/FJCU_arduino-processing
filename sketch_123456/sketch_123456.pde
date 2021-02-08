int y = 35;
PImage cat;
PImage mouse;
int xc=(int)random(700);
int yc=(int)random(700);
    int xm[] = new int [50];
     int ym[] = new int [50];

int score=0;

      int life[]=new int [50];
void setup() {
size(600, 800);
 cat= loadImage("cat.jpg");
mouse  = loadImage("mouse.jpg");
  for(int i=0;i<50;i++){
      ym[i]=(int)random(700);
      xm[i]=(int)random(500);
      life[i]=1;
    }
}
void draw() {
background(204);
          for(int i=0;i<50;i++){
             if(life[i]==1)
             image(mouse,xm[i],ym[i]);
           }
           image(cat,xc,yc);
textSize(50);
    text("score =="+score,10,40);

if (keyPressed==true && key=='w') {
  yc-=5;
if (yc<=0) {
yc=800;
}
}
if (keyPressed==true && key=='s') {
  yc+=5;
if (yc>=800) {
    yc=0;
}
}
if (keyPressed==true && key=='a') {
  xc-=5;
if (xc<=0) {
xc=600;
}
}
if (keyPressed==true && key=='d') {
  xc +=5;
if (xc>=600) {
xc =0;
}
}
  
    if(score>=50){
      textSize(100);
      text("yummy",100,450);
    }
       for(int i=0;i<50;i++){
         if(xc<xm[i]&&xc+100>=xm[i]+40&&yc<ym[i]&&yc+100>=ym[i]+50&&life[i]==1){
           life[i]=0;
           score++;
           
       }
       }
      
   println(xc+" == "+yc+" == "+xm+" == "+ym+" == ");
}
