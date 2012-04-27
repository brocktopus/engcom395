/*
'Iterative Colors' - Kevin Brock (kevin_brock@ncsu.edu)

Building upon the example 'Repeating Pattern,' this sketch demonstrates
how for() loops can work recursively to change multiple variables. In this
case, those variables are the colors of squares drawn repeatedly throughout
the sketch window.
*/

void setup() {
  size(800, 800);
  background(0);
  fill(255);
}

void draw() {
  for (int i = 0; i < width; i+=12) {

    for (int j = 0; j < height; j+=12) {
      for (int k = 0; k < height; k+=12) {

        /*  in the next line, we'll change the color of the fill()
         for each square - i will reflect red values, j will
         reflect green values, and k will reflect blue values
         
         because the width/height are more than 255 (the highest
         value a color can have), we'll map() each variable to
         a 0-255 scale
         */
        fill(map(i, 0, width, 0, 255), map(j, 0, height, 0, 255), map(k, 0, height, 0, 255));
        rect(i, j, 10, 10);
      }
    }
  }
}

