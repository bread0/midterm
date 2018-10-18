// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

float[] xPositions = new float[100];
float[] yPositions = new float[100];

void setup() {
  size(600, 600);
  background(30);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(width);
    yPositions[i] = random(height);
  }
}

void draw() {
  for (int i = 0; i < xPositions.length; i++) {
    fill(map(i, 0, xPositions.length, 100, 255));
    rect(xPositions[i]-200, yPositions[i], map(i, 0, xPositions.length, 20, 1), map(i, 0, yPositions.length, 20, 1));
    xPositions[i] += random(1,10);
    yPositions[i] += random(1,10);
    if (xPositions[i] > width && yPositions[i] > height) {
      xPositions[i] = -xPositions[i];
      yPositions[i] = -yPositions[i];
    }
  }
}
