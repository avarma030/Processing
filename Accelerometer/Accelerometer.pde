import processing.serial.*;
//import java.awt.event.KeyEvent;
//import java.io.IOException;

Serial myPort;
String data = "";
float x,y,z;

void setup() 
{
  size (500, 500, P3D);
  smooth();
  myPort = new Serial(this, "COM3", 9600); // starts the serial communication
  myPort.bufferUntil('\n');
}

void draw() 
{
  background(233);
  translate(width/2, height/2, 0);
  
  rotateX(radians(x));
  rotateZ(radians(y));
  rotateY(radians(z));
    
  fill(108, 206, 153);
  box (150, 150, 150); // Draw box
}

void serialEvent (Serial myPort) 
{ 
  data = myPort.readStringUntil('\n');
  if (data != null) 
  {
    data = trim(data);
    String items[] = split(data, '/');
    if (items.length > 1) 
    {
      x = float(items[0]);
      y = float(items[1]);
      z = float(items[2]);
    }
  }
}
