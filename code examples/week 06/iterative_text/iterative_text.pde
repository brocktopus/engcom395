/*
'Iterative Text' - Kevin Brock (kevin_brock@ncsu.edu)

Building upon 'Iterative Squares,' 'Iterative Colors,' and
'Rotating Iterations,' this sketch demonstrates how text (or any
other visual data) can be parsed iteratively as the squares are
in those other sketches. In this case, color and size are adjusted
depending upon the particular iteration.

There is also a commented-out line that adds in iterative rotation
to the text, demonstrating how seemingly chaotic behavior can emerge
from computations.
*/

PFont myfont;

void setup() {
  size(800, 800);
  background(0);
  fill(255);
  
  /*
  To use a font, we have to go to the Tools menu, then
  select 'Create Font' - after you pick your font and base
  size, hit 'OK' and it will add a font file to your sketch's
  data folder. Then, we tell Processing to load that file (see
  below).
  */
  myfont = loadFont("ArialMT-14.vlw");
}

void draw() {
  for (int i = 0; i < width; i+=32) {
    for (int j = 0; j < height; j+=20) {
//            rotate(j);
      for(int k = 0; k < height; k+=10) {
      fill(map(i,0,width,0,255),map(j,0,height,0,255),map(k,0,height,0,255));
      textFont(myfont,i/32);
      text("hello!",i,j);
    }
    }
  }
}

