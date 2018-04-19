
Rain r;
Rain[] rainfall = new Rain[50];

void setup() {
  size(500,500);
  background(#8DD5FA);
  r = new Rain();
  //This is the code for the array class of rain 
  for (int i = 0; i < rainfall.length; i ++){
  rainfall [i] = new Rain();
  }
  }
  

void draw(){
  
  for (int i=0 ; i < rainfall.length; i ++){
rainfall[i].update();
rainfall[i].display();
  }
  // This is the code for the tree 
fill(#4AAF5A);
beginShape();
vertex(300,300);
vertex(350,350);
vertex(325,350);
vertex(375,400);
vertex(350,400);
vertex(400,450);
vertex(200,450);
vertex(250,400);
vertex(225,400);
vertex(275,350);
vertex(250,350);
vertex(300,300);
endShape();

fill(#76330A);
rect(275,450,50,50);

// This is the scale transformation code for the tree trunk 
stroke(50);
pushMatrix();
fill(#C66F12);
scale(8.0);
rect(275,450,50,50);
popMatrix();

//Code for the branch sticking out of the tree
  PVector mouse = new PVector(mouseX, mouseY);
  PVector v1 = new PVector(5500,7000);
  mouse.add(v1);
  mouse.normalize();
  mouse.mult(500);
 translate(2,2);
  stroke(#2E1C06);
  strokeWeight(4);
  line(300,400, mouse.x, mouse.y);
  
//This is the code for the sun in the top left corner.
//The transformations that I applied make it so that the sun gradually forms in the
// left hand corner of the screen.
pushMatrix();
translate(5,5);
rotate(frameCount/100.0);
fill(#F0E91B);
noStroke();
ellipse(40,45,120,120);
popMatrix();

  }
