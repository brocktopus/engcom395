/*
'Trickier Array' - Kevin Brock (kevin_brock@ncsu.edu)

This example provides a slightly more complicated demonstration of
an array. Each click of the mouse grabs another element of the 'alpha2' 
array (or the 'story' array, if you comment the 'alpha2' line and 
uncomment the  string line below it) and appends it to the 'output_string'
variable as long as the element being called is not the same element as 
the current end of the output_string text. Then, the entirety of 
output_string is drawn in the sketch window.
*/

String alpha1 = "abcdefghijklmnopqrstuvwxyz";

String[] alpha2 = {
  "a", "b", "c", "d", "e", "f", "g", "h", "i", 
  "j", "k", "l", "m", "n", "o", "p", "q", "r", 
  "s", "t", "u", "v", "w", "x", "y", "z"
};

String[] story = {
 "This is a sentence.", "This is also a sentence.",
 "Did you know this was a sentence?", "Check out this example.",
 "Wowee!", "Just a test here.", "Is this the end?"
};

String output_string = "";
int map_mouse;
int old_mouse;

void setup() {
  size(300, 200);
}

void draw() {
  background(255);
  fill(0);
  map_mouse = int(map(mouseX, 0, width, 0, 26));
  if (old_mouse == map_mouse) {
  } 
  else {
    output_string = output_string + "" + alpha2[map_mouse] + " ";
//    output_string = output_string + "" + story[map_mouse] + " ";
    old_mouse = map_mouse;
  }
  text(output_string, 50, 50, 200, 150);
}

