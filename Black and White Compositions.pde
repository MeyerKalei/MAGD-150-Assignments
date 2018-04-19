void setup (){
size(400,400);

}

void draw (){
background(50);

ellipseMode(RADIUS); //large planet
fill(200);
ellipse(125,125,60,60);
ellipseMode(RADIUS);
fill(255);
ellipse(125,125,50,50);
ellipseMode(CORNER);
fill(100);
ellipse(125,125,50,50); //small planet orbiting the large planet 

ellipseMode(RADIUS); //sun
fill(255);
ellipse(0,400,115,115);
ellipseMode(RADIUS);
fill(240);
ellipse(0,400,100,100);

ellipseMode(RADIUS); //moon
fill(255);
ellipse(300,200,50,50);
stroke(190);
strokeWeight(20);
point(300,210);
strokeWeight(15);
point(270,190);
strokeWeight(15);
point(320,230);
strokeWeight(10);
point(280,225);
strokeWeight(23);
point(310,180);
strokeWeight(10);
point(320,195);
strokeWeight(15);
point(340,205);
strokeWeight(10);
point(285,170);

rectMode(RADIUS); //rocket
noStroke();
fill(100);
rect(200,300,25,50);
rectMode(RADIUS);
fill(200);
ellipse(200,290,15,20);
rectMode(RADIUS);
fill(150);
rect(200,340,15,15);
stroke(150);
strokeWeight(5);
line(170,250,229,250);
stroke(150);
strokeWeight(5);
line(170,250,200,220);
stroke(150);
strokeWeight(5);
line(229,250,200,220);
stroke(220);
strokeWeight(3);
line(200,360,200,390);
stroke(220);
strokeWeight(3);
line(180,360,180,370);
stroke(220);
strokeWeight(3);
line(220,360,220,370);
stroke(220);
strokeWeight(3);
line(190,360,190,380);
stroke(220);
strokeWeight(3);
line(210,360,210,380);

ellipseMode(RADIUS); // upper right corner planet 
fill(180);
ellipse(400,0,76,75);

ellipseMode(RADIUS);
strokeWeight(3);
stroke(160);
fill(200);
ellipse(350,375,60,60);


}
