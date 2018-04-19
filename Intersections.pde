boolean circleOver = false;
color rectFill= #2814E0;
int disX, disY;
color ellipseFill = #FAE819;



void setup(){
  surface.setResizable(true);
  surface.setTitle("Button");
  pixelDensity(displayDensity());
  background(#D45AF0);
  size(600,600);
}

void draw(){
 
  displayEllipse();
  displayRect();
  displayTextOne();
  displayTextTwo();
  displayHappyFace();

}
void displayRect(){
  rect(170,70,250,100);
  strokeWeight(5);
  fill(#E014C9);
   }
   void displayHappyFace(){
     if(mousePressed){
  if(mouseX>170 && mouseX <170+250 && mouseY>70 && mouseY <70+100)
    fill(ellipseFill);
    noStroke();
  ellipse(500,300,125,125);
  fill(0);
  noStroke();
  ellipse(475,290,25,25);
  fill(0);
  noStroke();
  ellipse(525,290,25,25);
  fill(0);
  arc(500,320,70,60,0,PI);
  }
}

void displayEllipse(){
  if ( circleOver) {
    fill(204);
  } else{
    fill(#E014C9);
  }
   ellipse(300,400,150,150);
   fill(#2814E0);
   strokeWeight(5);
}
void displayTextOne(){
  fill(255);
  textSize(25);
   text("YELLOW DIMENSION",175,125);
}

void displayTextTwo(){
  fill(255); 
  textSize(15);
   text("WHITE DIMENSION",235,410);
   }
   
