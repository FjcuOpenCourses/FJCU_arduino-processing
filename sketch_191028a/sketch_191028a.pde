int p1x = 150,p1y = 500,p2x = 1300,p2y = 500,ballx = 750,bally = 500;
int score1=0;
int score2=0;

boolean math=true;
void setup(){
size(1500,1000);
}
void draw(){
background(115,184,57);
noFill();
stroke(255);
strokeWeight(8);
rect(0,375,75,275);
rect(0,325,150,375);
rect(1425,375,75,275);
rect(1350,325,150,375);
line(750,0,750,1000);
rect(0,0,1500,1000);
ellipse(750,500,275,275);//center
noStroke();
fill(255,0,0);
rect(p1x,p1y,50,50);
fill(0,0,255);
rect(p2x,p2y,50,50);
fill(0);

ellipse(ballx,bally,50,50);//ball
if(keyPressed == true){
  if(key == CODED){
  if(keyCode == UP){
  p2y -= 5;
  if(p2y<=5){
   p2y = 5;
  }
  }
  if(keyCode == DOWN){
  p2y += 5;
  if(p2y>=995){
  p2y = 995;
  }
  }
  if(keyCode == LEFT){
  p2x -= 5;
  if(p2x <= 5){
  p2x = 5;
  }
  }
  if(keyCode == RIGHT){
  p2x += 5;
  if(p2x>=1495){
  p2x = 1495;
  }
  }
  }
  if(key == 'w'){
  p1y -= 5;
  if(p1y<=5){
  p1y = 5;
  }
  }
  if(key == 'a'){
  p1x -= 5;
  if(p1x<=5){
  p1x = 5;
  }
  }
  if(key == 's'){
  p1y += 5;
  if(p1y>=995){
  p1y = 995;
  }
  }
  if(key == 'd'){
  p1x += 5;
  if(p1x >=1495){
  p1x = 1495;
  }
  }

}
  if(ballx+25==p1x&&bally>p1y&&bally<p1y+50||ballx+25==p2x&&bally>p2y&&bally<p2y+50){
    ballx-=5;
    
    if(ballx<5){
    ballx=750;
    bally = 500;
    }
  }
 


if(ballx-75==p1x&&bally>p1y&&bally<p1y+50||ballx-75==p2x&&bally>p2y&&bally<p2y+50){
  ballx+=5;
     
    if(ballx>1495){
   ballx=750;
    bally = 500;
    }
}
 
if(bally+25==p1y&&ballx>p1x&&ballx<p1x+50||bally+25==p2y&&ballx>p2x&&ballx<p2x+50){
  bally-=5;

    if(bally<0){
   ballx=750;
    bally = 500;
    }
}


if(bally-75==p1y&&ballx>p1x&&ballx<p1x+50||bally-75==p2y&&ballx>p2x&&ballx<p2x+50){
  bally+=5;

 if(bally>=995){
   ballx=750;
    bally = 500;
    }
   
}


if(ballx>=1450&&bally>=375&&bally<=650){
score1 += 1;
math=false;
}
if(ballx<=75&&bally>=375&&bally<=650){
math=false;
score2+=1;
}
if(math==false)
{
  p1x = 150;
  p1y = 500;
  p2x = 1300;
  p2y = 500;
  ballx = 750;
  bally = 500;
  math=true;
}
textSize(200);
if(score1==5){
 
  text("P1 win",650,500);
}
if(score2==5){
  
  text("P2 win",650,500);
}
}
