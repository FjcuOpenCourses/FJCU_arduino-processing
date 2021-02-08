void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(4,INPUT); 
   pinMode(2,INPUT); 
    pinMode(3,INPUT); 
}
byte data[3];
void loop() {
  // put your main code here, to run repeatedly:
  int valX=digitalRead(4);
  int valY=digitalRead(2);
  int valButton=digitalRead(3);
  data[0]=valX;
  data[1]=valY;
  data[2]=valButton;
  Serial.write(data,3);
  Serial.println(valX+valY+valButton);
  delay(50);
}