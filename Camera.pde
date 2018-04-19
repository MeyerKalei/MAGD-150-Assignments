
//This code for the camera class creates the "camera" and controls user
//interaction. This code is based off of one created by Heinrich at the URL 
//www.openprocessing.org/sketch/136702
class Camera {
 PVector pos;
  
  Camera() {
    pos = new PVector(0,0);
  }
void move(){
    if (keyPressed){
    if (key == 'i') pos.y -=4;
    if (key == 'k') pos.y +=4;
    if (key == 'j') pos.x -=4;
    if (key == 'l') pos.x +=4;
  }
}}
