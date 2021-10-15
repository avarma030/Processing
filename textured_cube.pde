float movx = PI/4;
float movy = PI/4;
int maxImages = 6;
int imageIndex = 0;
PImage[] images = new PImage[maxImages];

void setup() 
{
  size(640, 360, P3D);

  for(int i = 0; i<images.length; i ++)
  {
    images[i] = loadImage("image" + i + ".jpg");
  }

  textureMode(NORMAL);
  fill(255);
  stroke(color(44,48,32));
}

void draw() 
{
  background(70);
  noStroke();
  translate(width/2.0, height/2.0, -100);
  rotateX(movx);
  rotateY(movy);
  scale(90);
  TexturedCube(); 
}

void TexturedCube() 
{
  beginShape(QUADS);
  texture(images[0]);
  // Surface 1
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);
  endShape();

  beginShape(QUADS);
  texture(images[1]);
  // Surface 2
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);
  endShape();

  beginShape(QUADS);
  texture(images[2]);
  // Surface 3
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);
  endShape();

  beginShape(QUADS);
  texture(images[3]);
  // Surface 4
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);
  endShape();

  beginShape(QUADS);
  texture(images[4]);
  // Surface 5
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);
  endShape();

  beginShape(QUADS);
  texture(images[5]);
  // Surface 6
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);
  endShape();
}

void mouseDragged() 
{
  float rate = 0.01;
  movx += (pmouseY-mouseY) * rate;
  movy += (mouseX-pmouseX) * rate;
}
