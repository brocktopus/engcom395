/*
'Procedural Colors' - Kevin Brock (kevin_brock@ncsu.edu)

Where 'Iterative Colors' parses the entirety of each for() loop before
drawing the result, this sketch draws each individually, manipulating
the spatial and color values of each square as the draw() function is
looped. Because the calculations occur differently, the blue values of the 
color of each square in this sketch are not identical to that of each
square in 'Iterative Colors.'

*/

int i = 0;
int j = 0;
int k = 0;

void setup() {
  size(800,800);
  background(0);
}

void draw() {
fill(map(i,0,width,0,255),map(j,0,height,0,255),map(k,0,height,0,255));
rect(i,j,10,10);
if (i > width) {
  i = 0;
j+=12;
} else {
  i+=12;
}
k++;
}
