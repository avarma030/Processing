import processing.serial.*;

Serial myPort;  // creating object

void setup() 
{
  size(200,200);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw() 
{
  if (mousePressed == true) 
  {                           
   myPort.write('1');         
   println("1");   
  } 
  else 
  {                           
  myPort.write('0');          
  }   
}
