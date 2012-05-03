/*
'Bouncy Image' - Kevin Brock (kevin_brock@ncsu.edu)

This sketch builds upon the 3D example provided in 'Bouncy Text'
by demonstrating a similar effect using an image file. The
major difference between this sketch and 'Bouncy Text' is that, in
Processing, images cannot be given a Z-axis value. Instead, the
image's position on the 3D grid is fixed, and we use pushMatrix(),
popMatrix(), and translate() to move around the grid itself 
instead of the image.

Note: you'll want to have an image file added to the sketch (change
the reference to "image0.jpg" below as needed).
*/

import processing.opengl.*;

float x = 1.5;
float y = 1.5;
float z = -200;
float xspeed = 1.5;
float yspeed = 1.5;
float zspeed = 1.5;

PImage img;

void setup() {
  size(600, 600, OPENGL);
  img = loadImage("image0.jpg");
}

void draw() {
  background(255);
  x = x + xspeed;
  y = y + yspeed;
  z = z + zspeed;
  pushMatrix();
  translate(x, y, z);
  image(img, 0, 0,150,200);
  popMatrix();
  if ((x+150 > width) || (x < 0)) {
    xspeed = xspeed * (-1);
  }
  if ((y+200 > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  if ((z+200 > 600) || (z < -500)) {
    zspeed = zspeed * -1;
  }
}

