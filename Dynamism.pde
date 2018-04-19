int pressedState = 2;
int pressed = 2;
float x,y;

void setup(){
  surface.setResizable(true);
  pixelDensity(displayDensity());
  size(600,600);
 
}

void draw(){
 
  if (pressedState == 4){
    background(#13AAD6);
  }else {
    background(#0274C9);
  }
  if (keyPressed==true){ //starfish
   stroke(#FC035A);
  fill(#F54D77);
  }else {
    stroke(#F24A0C);
    fill(#ED6939);
  }
beginShape();
vertex(500,500);
vertex(520,525);
vertex(550,525);
vertex(520,545);
vertex(537,575);
vertex(500,560);
vertex(463,575);
vertex(480,545);
vertex(450,525);
vertex(480,525);
vertex(500,500);
endShape();


 
  stroke(#1339BF);
  strokeWeight(1.5);
for(int x=2; x < 14; x++){ //waves
  noFill();
  ellipse(width/1.10, height/1.10, (x*24),(x*24));
} 

for (x=2; x<14; x++){ //waves
  noFill();
  ellipse(width/1.7, height/1.07, (x*20), (x*20));}
  
for (int x=2; x<14;x++){ //waves
    noFill();
    ellipse(width/3, height/1.10, (x*24), (x*24));}
    
for (int x=2; x<14; x++){ //waves
  noFill();
  ellipse(width/12, height/1.07, (x*20), (x*20));}
  
for(int x=2; x<14; x++){ //waves
  noFill();
  ellipse(width/.9, height/1.07, (x*20), (x*20));}
  
if(pressedState ==1){
stroke(#FFE412);
fill(#FEFF12); //beachball
}else{
stroke(#12B218);
fill(#15FF12);
}
ellipse(mouseX,mouseY,90,90);
}
 
 void mousePressed(){
   pressed = pressed + 4;
   pressedState = (pressed % 5);
 }
