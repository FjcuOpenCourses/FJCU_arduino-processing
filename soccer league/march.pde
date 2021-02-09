
class march{
  
int score1;
int score2;
boolean begin;
int ballx;
int bally;
  
   march(){
   ballx=750;
   bally=500;
  begin =true;
  }
  void feildDisplay(){
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
    
  }
  void newScore(){
     ballx=750;
   bally=500;
  }
  void ballDisPlay(){
    fill(255);
    ellipse(ballx,bally,50,50);
 
  }
}
