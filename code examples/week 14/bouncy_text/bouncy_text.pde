/*
'Bouncy Text' - Kevin Brock (kevin_brock@ncsu.edu)

This sketch provides a 3D example of text bouncing around
within a 3D space, slowly getting faster and faster as it
does so. There exists a 2D version of this code that a pair
of my students found and wanted to build upon (and which
subsequently became the basis for this example). Unfortunately,
I'm not sure exactly where they found it; if I come across
it, I'll add the original URL to this comment/file.
*/

import processing.opengl.*;

float x = 1.5;
float y = 1.5;
float z = -200;
float xspeed = 1.5;
float yspeed = 1.5;
float zspeed = 1.5;

void setup() {
  size(600, 600, OPENGL);
}

void draw() {
  background(255);
  fill(0);
  text("Testing!", x, y, z);
  x = x + xspeed;
  y = y + yspeed;
  z = z + zspeed;
  if ((x+50 > width) || (x < 0)) {
    xspeed = xspeed * (-1);
  }
  if ((y+20 > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  if ((z+200 > 600) || (z < -500)) {
    zspeed = zspeed * -1;
  }
}

