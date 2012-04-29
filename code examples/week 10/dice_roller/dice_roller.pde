/*
'Dice Roller' - Kevin Brock (kevin_brock@ncsu.edu)

This sketch creates a simple dice roller, based on the example provided
by Casey Reas & Ben Fry in _Getting Started with Processing_. It exists
primarily to demonstrate 1) creating a custom function and 2) passing
data into, and returning data from, that function.
*/

int dice_result = 0;

void setup() {
}

void draw() {
}

void mousePressed() {
  dice_result = rollDice(7); 
  println(dice_result);
}

int rollDice(int sides) {
  int rolling = int(random(1, sides));
  return rolling;
}