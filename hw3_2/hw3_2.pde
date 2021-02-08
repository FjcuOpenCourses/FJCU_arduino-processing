  int[] x = new int [150];
int[] y = new int [150];
int [] r = new int [150];
int[] g = new int [150];
int[] b = new int  [150];
void setup() {
int num = 150;




  size(500, 500);
noStroke();
smooth();

fill(255, 102);


}
void draw() {
  background(0);

  for(int i=150-1;i>0;i--){
   x[i]=x[i-1];
    y[i]=y[i-1];
     r[i]=r[i-1];
      g[i]=g[i-1];
       b[i]=b[i-1];
  }
           

x[0] = mouseX;
y[0] = mouseY;
r[0]=(int)(random(255));
g[0]=(int)(random(255));
b[0]=(int)(random(255));
// Cycle between 0 and the number of elements

for (int i = 0; i < 150; i++) {
// Set the array position to read

fill(r[i],g[i],b[i]);
ellipse(x[i],y[i],i/2,i/2);
}
}
