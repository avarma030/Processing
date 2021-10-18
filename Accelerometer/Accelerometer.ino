#include <Arduino_LSM6DS3.h>

float x, y, z;
int angleX = 0;
int angleY = 0;

void setup() 
{
  Serial.begin(9600);

  if (!IMU.begin()) 
  {
    Serial.println("Failed to initialize IMU!");
  }
}

void loop() 
{
  if (IMU.accelerationAvailable()) 
  {
    IMU.readAcceleration(x, y, z);
  }
  if (x > 0.1) 
  {
    x = 100 * x;
  }
  if (x < -0.1) 
  {
    x = 100 * x;
  }
  if (y > 0.1) 
  {
    y = 100 * y;
  }
  if (y < -0.1) 
  {
    y = 100 * y;
  }
  if (z > 0.1) 
  {
    z = 100 * z;
  }
  if (z < -0.1) 
  {
    z = 100 * z;
  }

  Serial.print(x);
  Serial.print("/");
  Serial.print(y);
  Serial.print("/");
  Serial.println(z);
  
  delay(1000);
}
