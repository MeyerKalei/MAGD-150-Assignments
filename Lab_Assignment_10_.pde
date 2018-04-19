Camera view;
float x, y, z, RotationX, RotationY, scale;
PImage img;
PShape sphere;


void setup(){
  surface.setResizable(true);
  pixelDensity(displayDensity());
  size(600,400,P3D);
  background(255);
  noStroke();
  textureMode(NORMAL);
  view = new Camera();

//Coding for general sizing and measurements to be used in the remainder of the sketch.
  x = width/2.5;
  y = height/2.5;
  z = -400;
  scale =min(width,height)/2.0;

  img = loadImage("texture.jpg");

  sphere = loadShape("sphere.obj");
  sphere.scale(125,125,125);
  sphere.setTexture(img);
  
}

void draw(){
  background(255);
  
  translate(-view.pos.x, -view.pos.y);
  view.move();
  
  //Took the rotation code from Example_10_9_Meshes
  RotationX = map(mouseY, -height / 2.0, height / 2.0, 0, TWO_PI);
  RotationY = map(mouseX, -width / 2.0, width / 2.0, 0, TWO_PI);

  pushMatrix();
  translate(100,200,-300);
  rotateY(RotationY);
  rotateX(RotationX);
  
  scale(scale);
  
  //Front of the square
  beginShape();
  texture(img);
  vertex(-0.5,-0.5,0.5,0,0);
  vertex(0.5,-0.5,0.5,1,0);
  vertex(0.5,0.5,0.5,1,1);
  vertex(-0.5,0.5,0.5,0,1);
  endShape(CLOSE);
  
  //Right side of the square
  beginShape();
  texture(img);
  vertex(0.5,-0.5,0.5,0,0);
  vertex(0.5,-0.5,-0.5,1,0);
  vertex(0.5,0.5,-0.5,1,1);
  vertex(0.5,0.5,0.5,0,1);
  endShape(CLOSE);
  
  //Back of the square
  beginShape();
  texture(img);
  vertex(0.5,-0.5,-0.5,0,0);
  vertex(-0.5,-0.5,-0.5,1,0);
  vertex(-0.5,0.5,-0.5,1,1);
  vertex(0.5,0.5,-0.5,0,1);
  endShape(CLOSE);
  
  //Left side of the square 
  beginShape();
  texture(img);
  vertex(-0.5,-0.5,-0.5,0,0);
  vertex(-0.5,-0.5,0.5,1,0);
  vertex(-0.5,0.5,0.5,1,1);
  vertex(-0.5,0.5,-0.5,0,1);
  endShape(CLOSE);
  
  //Bottom of the squre 
  beginShape();
  texture(img);
  vertex(-0.5,0.5,0.5,0,0);
  vertex(0.5,0.5,0.5,1,0);
  vertex(0.5,0.5,-0.5,1,1);
  vertex(-0.5,0.5,-0.5,0,1);
  endShape(CLOSE);
  
  //Top of the square 
  beginShape();
  texture(img);
  vertex(-0.5,-0.5,-0.5,0,0);
  vertex(0.5,-0.5,-0.5,1,0);
  vertex(0.5,-0.5,0.5,1,1);
  vertex(-0.5,-0.5,0.5,0,1);
  endShape(CLOSE);
  popMatrix();
 
 //This is the code for the lighting given to the sphere.
 directionalLight(460,200,400,0,0.5,-1);
 ambientLight(120,120,120);
 
 //This is the code for the sphere's constant rotation.
  sphere.rotateY(0.01);
  sphere.rotateX(0.02);
  sphere.rotateZ(0.03);
  
  shape(sphere,450,200);

 
}
