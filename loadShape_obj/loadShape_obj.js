let design;
let object;
let speed=0;
let rate=0;
let movx=0;
let movy=0;

function preload() 
{
  design = loadImage('bentley.jpg');
  object = loadModel('rocket.obj');
}

function setup() 
{
  createCanvas(700, 700, WEBGL);
}

function draw() 
{
  background(100);
  ambientLight(255, 255, 255);
  //directionalLight(255, 255, 255, 0, 0, 1);
  translate(0, 0, 0);
  
  rotateX(135+movx);
  rotateY(movy);
  rotateZ(movy-movx);
  
  /*  rotateX(map(mouseY, 0, width, -PI, PI));
      rotateY(map(mouseX, 0, width, -PI, PI));  */   //Uncomment this to move the model according to mouse pointer.
      
  texture(design);
  model(object);
  speed +=0.05;
}

function mouseDragged ()
{
  rate = 0.01;
  movx += (pmouseY-mouseY) * rate;
  movy += (mouseX-pmouseX) * rate;
}
