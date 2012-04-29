/*
'Interactive Mouse and Keyboard' - Kevin Brock (kevin_brock@ncsu.edu)

This sketch demonstrates a simple means of using both mouse and keyboard together
to achieve different effects. In this case, there is a 'usable area' created within
the boundaries of the (x,y) coordinates of the mouseClicked position and the (x,y)
coordinates of the mouseReleased position, drawing the text of the string variable
'test'.  Then, the keys W, A, S, and D will move that drawn usable area around the 
sketch window.
*/

int cornerx = 0;
int cornery = 0;
int sizex = 10;
int sizey = 10;
int speed = 5;

String test = "This is a block of text to populate our mouse clicking/releasing area.";
void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  fill(0);
  text(test, cornerx, cornery, sizex, sizey);
}

void mousePressed() {
  cornerx = mouseX;
  cornery = mouseY;
}

void mouseReleased() {
  sizex = mouseX-cornerx;
  sizey = mouseY-cornery;
}

void keyPressed() {
  if (key == 'w') {
    cornery-=speed;
  }
  if (key == 'a') {
    cornerx-=speed;
  }
  if (key == 's') {
    cornery+=speed;
  }
  if (key == 'd') {
    cornerx+=speed;
  }
  if (key == ' ') {
    speed++;
  }
}

