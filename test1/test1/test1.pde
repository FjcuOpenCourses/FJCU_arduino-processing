PImage monster;
PImage flight;

int speed = 10;

int move0 = 5;
int move1 = 6;
int move2 = 3;
int move3 = 7;

int Mx0 = int(random(0, 40));
int My0 = 0;
int Mx1 = int(random(140, 230));
int My1 = 0;
int Mx2 = int(random(300, 320));
int My2 = 0;
int Mx3 = int(random(80, 110));
int My3 = 0;

int Bx = 200;
int By = 780;
int Fx;
int Fy;
int[] Mlife = new int[10]; 
int Blife = 0;

int score = 0;

void setup(){
  
  size(400,800);
  background(0);
  noStroke();
  monster = loadImage("doge.png");
  flight = loadImage("air.png");
  for(int x = 0;x < 4;x++){
    Mlife[x] = 1;
  }
  
}

void draw(){
  
  background(0);
  
  textSize(20);
  fill(255);
  text("Score = " + score, 14, 20);
  
  Fx = mouseX-15;
  Fy = mouseY+5;

  image(flight, Fx, Fy, 60, 60);
  
  bullet();
  
  monster();
  
  if(Bx >= Mx0 && Bx <= Mx0 + 80 && By <= My0 + 80 && Blife == 1){
    Mlife[0]=0;
    By = 780;
    score++;
    Blife = 0;
  }
  if(Bx >= Mx1 && Bx <= Mx1 + 80 && By <= My1 + 80 && Blife == 1){
    Mlife[1]=0;
    By = 780;
    score++;
    Blife = 0;
  }    
  if(Bx >= Mx2 && Bx <= Mx2 + 80 && By <= My2 + 80 && Blife == 1){
    Mlife[2]=0;
    By = 780;
    score++;
    Blife = 0;
  }  
  if(Bx >= Mx3 && Bx <= Mx3 + 80 && By <= My3 + 80 && Blife == 1){
    Mlife[3]=0;
    By = 780;
    score++;
    Blife = 0;
  }
  
}

void bullet(){
  
  
  if(mousePressed == true && mouseButton == LEFT && Blife == 0){
    Blife = 1;      
  }
  if(Blife == 1){
    
    fill(random(255), 150, 150);
    
    By = By - speed; 
    ellipse(Bx, By, 10, 10);
    
    if(By < 0){
      Blife = 0;
      By = 780;
    }
    
  }  
  
}



void monster(){
  
      if(Mlife[0] == 1){
      
      My0 = My0 + move0;
      image(monster, Mx0, My0, 80, 95);
      if(My0 >= 1050){
        Mlife[0] = 0;
        move0 = 5;
        My0 = 0;
      }
    }
    
    if(Mlife[0] == 0){
       Mx0 = int(random(0, 40));
       My0 = 0;
       Mlife[0] = 1; 
    }  
    
    if(Mlife[1] == 1){
      
      My1 = My1 + move1;
      image(monster, Mx1, My1, 80, 95);
      if(My1 >= 1050){
        Mlife[1] = 0;
        move1 = 6;
        My1 = 0;
      }
    }
    
    if(Mlife[1] == 0){
       Mx1 = int(random(140, 230));
       My1 = 0;
       Mlife[1] = 1; 
    }     
    
    if(Mlife[2] == 1){
      
      My2 = My2 + move2;
      image(monster, Mx2, My2, 80, 95);
      if(My2 >= 1050){
        Mlife[2] = 0;
        move2 = 3;
        My2 = 0;
      }
    }
    
    if(Mlife[2] == 0){
       Mx2 = int(random(300, 320));
       My2 = 0;
       Mlife[2] = 1; 
    }

    if(Mlife[3] == 1){
      
      My3 = My3 + move3;
      image(monster, Mx3, My3, 80, 95);
      if(My3 >= 1050){
        Mlife[3] = 0;
        move3 = 7;
        My3 = 0;
      }
    }
    
    if(Mlife[3] == 0){
       Mx3 = int(random(80, 110));
       My3 = 0;
       Mlife[3] = 1; 
    }
    
}
