void setup()
{
  size(1260, 720, P3D);
  stroke(0,0,200);
  strokeWeight(0.02);
}

void draw()
{
  background(0);
  fill(255); //white
  lights();
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, width, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
  
  scale(90);
  beginShape(QUADS);
 
  //1  
  if(mousePressed)
    {
      fill(255,0,0); //RED
    }
  else 
    {
      fill(255);
    }
  vertex(-2, 2, 2,0,2);
  vertex( 2, 2, 2, 0,0);
  vertex( 2, -2, 2, 2,0);
  vertex(-2, -2, 2,2,2);

  //2
  if(mousePressed)
    {
      fill(0,255,0); //GREEN
    }
  else 
    {
      fill(255);
    }
  vertex( 2, 2, 2);
  vertex( 2, 2, -2);
  vertex( 2, -2, -2);
  vertex( 2, -2, 2);

  //3
  if(mousePressed)
    {
      fill(0,0,255); //BLUE
    }
  else 
    {
      fill(255);
    }
  vertex( 2, 2, -2);
  vertex(-2, 2, -2);
  vertex(-2, -2, -2);
  vertex( 2, -2, -2);

  //4
  if(mousePressed)
    {
      fill(255,244,79); //PINK
    }
  else 
    {
      fill(255);
    }
  vertex(-2, 2, -2);
  vertex(-2, 2, 2);
  vertex(-2, -2, 2);
  vertex(-2, -2, -2);

  //5
  if(mousePressed)
    {
      fill(255,192,203); //YELLOW
    }
  else 
    {
      fill(255);
    }
  vertex(-2, 2, -2);
  vertex( 2, 2, -2);
  vertex( 2, 2, 2);
  vertex(-2, 2, 2);

  //6
  if(mousePressed)
    {
      fill(0, 255, 255); //CYAN
    }
  else 
    {
      fill(255);
    }
  vertex(-2, -2, -2);
  vertex( 2, -2, -2);
  vertex( 2, -2, 2);
  vertex(-2, -2, 2);

  endShape();
}
