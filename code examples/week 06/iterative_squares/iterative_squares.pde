/*
'Iterative Squares' - Kevin Brock (kevin_brock@ncsu.edu)

This sketch demonstrates the for() loop and iteration by calculating
and then drawing a series of squares of equal size across the screen.
*/

void setup() {
  size(800, 800);
  background(0);
  fill(255);
}

void draw() {
  for (int i = 0; i < width; i+=12) {
    for (int j = 0; j < height; j+=12) {
      rect(i, j, 10, 10);
    }
  }
}
