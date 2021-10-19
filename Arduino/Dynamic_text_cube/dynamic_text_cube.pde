import processing.serial.*;

PGraphics pg;
PImage txtImg;
float x,y,z;
String data = "";
Serial myPort;

void setup(){
  size (500, 500, P3D);
  pg = createGraphics(300,300,P2D);
  smooth();
  myPort = new Serial(this, "COM3", 9600); // starts the serial communication
  myPort.bufferUntil('\n');
}

void draw() { 
  background(70);
  translate(width/2, height/2, 0);
  rotateX(radians(x));
  rotateZ(radians(y));
  rotateY(radians(z));

  pushStyle();
    noFill();
    stroke(0,255,0);
    String XC= "x="+x;
    String YC= "  y="+y;
    String ZC= "  z="+z;
    String s = XC+YC+ZC;
    txtImg = textImager(s, pg);
    textureCube(txtImg);
  popStyle();
}

PImage textImager(String s, PGraphics pg) {
  pg.beginDraw();
  pg.background(0);
  pg.textAlign(CENTER);
  pg.fill(255);
  pg.textSize(25);
  pg.text(s, 150, 180);
  pg.endDraw();
  return pg.get();
}

void textureCube(PImage img) {
  textureFace(img, 0, 0, 0);
  textureFace(img, 0,-HALF_PI, 0);
  textureFace(img, 0, HALF_PI, 0);
  textureFace(img, 0, PI, 0);
  textureFace(img, -HALF_PI, 0, 0);
  textureFace(img,  HALF_PI, 0, 0);
}


void textureFace(PImage img, float rx, float ry, float rz){
  pushMatrix();
    rotateX(rx);
    rotateY(ry);
    rotateZ(rz);
    beginShape();
      texture( img );
      vertex(-100, -100,  100, 0, 0);
      vertex( 100, -100,  100, 300, 0);
      vertex( 100,  100,  100, 300, 300);
      vertex(-100,  100,  100, 0, 300);
      vertex(-100, -100,  100, 0, 0);
    endShape();
  popMatrix();
}

void serialEvent (Serial myPort) { 
  data = myPort.readStringUntil('\n');
  if (data != null) {
    data = trim(data);
    String items[] = split(data, '/');
    if (items.length > 1) {
      x = float(items[0]);
      y = float(items[1]);
      z = float(items[2]);
    }
  }
}
