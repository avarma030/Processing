 char val; // variable to store received data
 int ledPin = 13; // led pin no.

 void setup() 
 {
   pinMode(ledPin, OUTPUT); // Set pin as OUTPUT
   Serial.begin(9600); 
 }

 void loop() 
 {
   if (Serial.available()) 
   { 
    val = Serial.read(); // to read and store in val
   }
   if (val == '1') 
   { 
     digitalWrite(ledPin, HIGH);
   } 
   else 
   {
     digitalWrite(ledPin, LOW);
   }
   delay(10);
 }
