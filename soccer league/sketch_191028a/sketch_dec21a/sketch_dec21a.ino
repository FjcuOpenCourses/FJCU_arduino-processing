int x1Value = 0 ; // read value of the X axis  
int y1Value = 0 ; // read value of the Y axis  
int b1Value = 0 ; // value of the button reading 

int x2Value = 0 ; // read value of the X axis  
int y2Value = 0 ; // read value of the Y axis  
int b2Value = 0 ; // value of the button reading 
void setup()  
{ 
  Serial.begin(9600) ; // Open the serial port
 
} 

void loop() 
{ 
  // Read analog port values A0 and A1  
  x1Value = analogRead(A0);  
  y1Value = analogRead(A1);  

 x2Value = analogRead(A4);  
  y2Value = analogRead(A5);  

  // Read the logic value on pin 2  
  b1Value = digitalRead(8);  
   b2Value = digitalRead(9);  

  // We display our data separated by a comma 
  Serial.print(x1Value,DEC);
  Serial.print(",");
  Serial.print(y1Value,DEC);
  Serial.print(",");
  //Serial.print(!b1Value);
 Serial.print(",");
     delay(10);  
  Serial.print(x2Value,DEC);
  Serial.print(",");
  Serial.print(y2Value,DEC);
  Serial.print(",");
  Serial.print(!b2Value);

  // We end with a newline character to facilitate subsequent analysis  
  Serial.print("\n");

  // Small delay before the next measurement  
  delay(10);  
}
