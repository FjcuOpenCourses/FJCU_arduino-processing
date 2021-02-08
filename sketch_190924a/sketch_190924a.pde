void setup() {
size(1000, 800);
strokeWeight(8);
smooth();
stroke(180, 177, 132);
background(255,255,255);//set background color
 fill(47, 72, 236);//bule
    rect(0,0,50,50);
      fill(255,0,0);//red
         rect(0,50,50,50);
         fill(110, 164, 32);//green
           rect(0,100,50,50);
           fill(220, 214, 41);//yellow
             rect(0,150,50,50);
              fill(0,0,0);//black
             rect(0,200,50,50);
             fill(250);
             rect(900,0,100,100);//save button
             fill(0); 
             text("save",940,40);
          fill(250);
             rect(900,100,100,100);//earser button
              fill(0);
             text("earser",940,140);  
                fill(255); 
              rect(900,200,100,100);
             fill(180, 177, 132);
                 stroke(180, 177, 132);
                ellipse(940,250,2,2);
              fill(250);
             rect(900,300,100,100);//larger
             fill(180, 177, 132);
             ellipse(940,350,15,15);
              fill(250);
             rect(900,400,100,100);
             fill(0); 
             text("clear",940,450);
}
void draw() {
  
       
       if(mousePressed == true && mouseButton== LEFT){
                if(mouseY<=50 && mouseX<50){
                  stroke(47, 72, 236);//change color to bule
                }
                 if(mouseY<=100&&mouseY>50 &&mouseX<50){
                  stroke(255,0,0);//change color to red
                }
                 if(mouseY<=150&&mouseY>100&& mouseX<50){
                  stroke(110, 164, 32);//change color to green
                }
                 if(mouseY>150&&mouseY<=200&&mouseX<50){
                  stroke(220, 214, 41);//change color to yellow
                 }
                  if(mouseY>200&&mouseY<=250&&mouseX<50){
                  stroke(0,0,0);//change color to black
                 
       }
       if(mouseY>=400&&mouseY<500&&mouseX>900){
       fill(255);
          stroke(255);
         rect(55,0,835,800);
         rect(0,255,890,650);
         rect(0,520,1000,280);
       }
        if(mouseY>=100&&mouseY<200&&mouseX>900){
        stroke(255,255,255);
       }
       if(mouseY>=200&&mouseY<300&&mouseX>900){
      save("1235.jpg");
         
       }
        if(mouseY>=300&&mouseY<400&&mouseX>900){
         strokeWeight(18);
         
       }
       }
       
if(mousePressed == true && mouseButton== LEFT && ((mouseX>52&&mouseX<898)||(mouseY>250&&mouseX<898)||mouseY>520)                                               ){

line(mouseX, mouseY, pmouseX, pmouseY);
}

}
