/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

  Most Arduinos have an on-board LED you can control. On the UNO, MEGA and ZERO
  it is attached to digital pin 13, on MKR1000 on pin 6. LED_BUILTIN is set to
  the correct LED pin independent of which board is used.
  If you want to know what pin the on-board LED is connected to on your Arduino
  model, check the Technical Specs of your board at:
  https://www.arduino.cc/en/Main/Products

  modified 8 May 2014
  by Scott Fitzgerald
  modified 2 Sep 2016
  by Arturo Guadalupi
  modified 8 Sep 2016
  by Colby Newman

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/Blink
*/
  int count=0;
// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  /*digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(4, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(4, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)
  delay(1000);*/

  if(count==0){
    digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(4, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000);
        digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(4, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
    

    
    }
   if(count==1){
    digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000);
     digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
    
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)

    
    
    }
    if(count==2){
      digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(4, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
      delay(1000);
          digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
    
    digitalWrite(4, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
   
    digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)

      
      }
      if(count==3){
      digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
      delay(1000);
          digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)

   
    digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)

     
        }
       if(count==4){
      digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
      digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
      delay(1000);
          digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
   
    digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
   
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)

   
        }
       if(count==5){
       digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
       delay(1000);
           
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
   
    digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)

    
        }
       if(count==6){
       digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(4, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
       delay(1000);
           
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(4, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)

        }
       if(count==7){
       digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
       delay(1000);
           digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
    
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
  

     
        }
        if(count==8){
       digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(4, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
       delay(1000);
       digitalWrite(1,LOW);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(4, LOW);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)
          
          }
         if(count==9){
       digitalWrite(1, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(3, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(5, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
       digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level) 
       delay(1000);
     digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)
  
         }
    digitalWrite(1, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(3, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(4, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(5, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)

  if(count<9)
  count++;
  else
  count=0;
}