/*
'Simple Array' - Kevin Brock (kevin_brock@ncsu.edu)

This sketch demonstrates the use of a simple string array as its elements
might be called through a for() loop in order to compare its output with 
that of the 'alpha1' string provided directly below.
*/
String alpha1 = "abcdefghijklmnopqrstuvwxyz";

String[] alpha2 = {
  "a", "b", "c", "d", "e", "f", "g", "h", "i", 
  "j", "k", "l", "m", "n", "o", "p", "q", "r", 
  "s", "t", "u", "v", "w", "x", "y", "z"
};

void setup() {
  size(300, 200);
}

void draw() {
  background(255);
  fill(0);
  for (int iteration=0; iteration < 26; iteration++) {
    text(alpha2[iteration], 50 + (iteration * 8), height/2);
  }
}

