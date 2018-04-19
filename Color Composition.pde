void setup(){
size(500,500);
}

void draw(){
background(#79A6CB);
colorMode(RGB,100);
fill(30,10,40);
beginShape(); //Hot air balloon basket
vertex(300,300);
vertex(400,300);
vertex(375,400);
vertex(325,400);
endShape(CLOSE);

noFill(); //Hot air balloon ropes
bezier(370,300,376,213,413,262,364,196); 
noFill();
bezier(330,300,336,213,280,262,336,196);

beginShape();//Base of the hot air balloon
colorMode(RGB,300);
fill(20,40,120);
vertex(370,157);
vertex(370,195);
vertex(330,195);
vertex(330,157);
endShape();

fill(20,50,100);
triangle(350,85,370,157,330,157);

fill(50,40,150); //Hot air balloon
arc(350,85,150,150,radians(105),radians(435));

colorMode(HSB,100);
fill(30,200); //Far left balloon
triangle(100,200,110,225,90,225);
fill(#B83BC1);
arc(100,150,70,100,radians(80),radians(450));
noFill();
bezier(100,225,57,265,138,252,105,331);

fill(30,200);//Middle balloon
triangle(200,310,215,325,185,325);
fill(#EA39AA);
arc(200,250,90,120,radians(80),radians(450));
noFill();
bezier(200,325,146,349,277,368,208,443);

}
