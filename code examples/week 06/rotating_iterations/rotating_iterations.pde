/*
'Rotating Iterations' - Kevin Brock (kevin_brock@ncsu.edu)

The following sketch initially replicates 'Iterative Squares' but
has three (currently commented-out) lines that enable three different
types of rotation. Each affects the overall expression in a unique
way, and combinations of two or all three of the rotations further
manipulate the squares' calculations.
*/

void setup() {
  size(800, 800);
  background(0);
  fill(255);
}

void draw() {
  for (int i = 0; i < width; i+=12) {
    for (int j = 0; j < height; j+=12) {
      //   rotate(i); // check out how each square rotates
     //    rotate(j); // OR, more complicated:
     //    rotate(radians(int(random(j))));
      rect(i, j, 10, 10);
    }
  }
}

