/*
'Square over Time' - Kevin Brock (kevin_brock@ncsu.edu)

This sketch draws a square procedurally in multiple ways. First, it
re-draws the square with a different color value (from black to white).
The first commented line will shift its (x,y) position with each new
call of draw(). The second commented line will rotate each drawn square
around the (0,0) position of the sketch window. Uncommenting both lines
will create a unique effect that calls on both the translate() and
rotate() methods.
*/

int counter = 0;

void setup() {
  size(500, 500);
}

void draw() {
//  translate(counter, counter);
//  rotate(radians(counter));
  if (counter < 254) {
    fill(counter);
  } 
  else {
    fill(255);
  }
  rect(50, 50, 50, 50);
  counter+=2;
}