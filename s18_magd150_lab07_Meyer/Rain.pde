class Rain{
  
PVector position;
PVector velocity; 
PVector acceleration;

Rain (){
  // This position vector assures that the rain falling down is in random positions 
  // every time the sketch is ran 
  position = new PVector(random(width), random(height));
  // This velocity vecotr assures that the rain falling down is generated at a minimum
  // height of 2 and can start anywhere on the x-axis.
  velocity = new PVector(0,2);
  
}

void update(){
  position.add(velocity);
  
}

void display (){
  noStroke();
  fill(#2547E8);
  ellipse(position.x, position.y, 10,10);
}}
