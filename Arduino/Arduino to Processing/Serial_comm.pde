import processing.serial.*;

Serial myPort;  // creating object
String val;     // variable to store received data

void setup()
{
  String portName = Serial.list()[0]; //assigning the port
  myPort = new Serial(this, portName, 9600);
}

void draw()
{
  if ( myPort.available() > 0) 
  {  // If data is available,
  val = myPort.readStringUntil('\n');         // read it and store it in val
  } 
println(val); //print it out in the console
}
