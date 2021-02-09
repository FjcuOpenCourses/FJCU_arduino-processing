class player{
  int x;
  int y;
  int r;
  int b;
  int g;
  int ox,oy;
  boolean upPressed ;
   boolean downPressed ;
    boolean leftPressed ;
     boolean rightPressed ;
  player(){
     r=0;
     b=0;
     g=0;
     x=0;
     y=0;
     ox=0;
     oy=0;
    
     upPressed =false;
     downPressed=false ;
     leftPressed =false;
     rightPressed=false ;
    
  }
   player(int a,int k,int c,int m,int n){
     r=a;
     b=k;
     g=c;
     x=m;
     y=n;
     ox=m;
     oy=n;
    
     
   }
   void up(){
     y-=5;
   }
      void down(){
     y+=5;
   }
      void left(){
     x-=5;
   }
      void right(){
     x+=5;
   }
   void display(){
     noStroke();
     fill(r,b,g);
rect(x,y,50,50);
}
void back(){
  x=ox;
  y=oy;
 
  
}
}
