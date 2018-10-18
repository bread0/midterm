// change the sketch so that the X movement of the 
// mouse will cause the triangle to complete one 
// full 360 degree rotation. this is best accomplished 
// with map().



void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  float m = map(mouseX, 0, width, 0, 360);
  background(50);
  translate(width/2, height/2);
  rotate(radians(m));
  triangle(0, -100, 50, 100, -50, 100);
}
