boolean green_click;
boolean red_click;
int counter = 0;
/*
'Boolean Clicking' - Kevin Brock (kevin_brock@ncsu.edu)
 
 This sketch provides a simple demonstration of a mouse click-based
 boolean switch, changing the color of the sketch window from white (when
 the switch has not yet changed) to red/green (alternating between
 true/false values of the boolean variable).
 */

void setup() {
  size(300, 300);
  background(255);
}

void draw() {
  if (green_click) {
    background(0, 255, 0);
  } 
  else if (red_click) {
    background(255, 0, 0);
  } 
  else {
    background(255);
  }
}

void mousePressed() {
  counter++;
  if (counter%10 == 0) {
    red_click = false;
    green_click = false;
  } 
  else if (green_click) {
    red_click = true;
    green_click = false;
  } 
  else {
    red_click = false;
    green_click = true;
  }
}

