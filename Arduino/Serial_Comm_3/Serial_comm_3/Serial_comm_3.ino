char val; // to store receive data
int ledPin = 13; // led pin no.
boolean ledState = LOW;

void setup() 
{
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
  establishContact();  // send a byte to establish contact until receiver responds 
}

void loop()
{
  if (Serial.available() > 0) 
  {
    val = Serial.read();

    if(val == '1')
    {
       ledState = !ledState;
       digitalWrite(ledPin, ledState); 
    }
    delay(100);
  } 
  else 
  {
    Serial.println("this is Arduino Nano 33 IoT");
    delay(50);
  }
}

void establishContact() 
{
  while (Serial.available() <= 0) 
  {
  Serial.println("A");
  delay(300);
  }
}
