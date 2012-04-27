/*
'Simple Maze' - Kevin Brock (kevin_brock@ncsu.edu)

This maze is meant to demonstrate several key operations:
1) Randomizing elements of an array to use them in a creative way (in this case,
to draw the walls of a maze).
2) Checking boolean values to constrain user behavior (such as being able to
play the game or viewing the static victory/failure screens).
3) Using get() to compare the values of pixel colors (to see if the user's square
collides with a wall).

The maze isn't perfect, but it demonstrates pretty successfully the above goals.
*/

/*
We'll start by setting up some values. Most of my integers
 will begin at 0, except inc_rate, which is set at 900 because
 I want it to be used to check when a counter reaches 900 
 milliseconds.
 
 The 'boolean' data type is basically the same as an integer
 that can be only 1 or 0 ("true" or "false"). It can be used
 to simplify some condition checks - you can think of it like
 a toggle switch that can be either off or on.
 */
boolean failed;
int start_time = 0;
int interval = 0;
int wall_size = 0;
int inc_rate = 900;
int counter = 1;
int key_x = 0;
int key_y = 0;

/*
I'll also be adding a font in, just like we did with the
 'rotating text' sketch from last week. You don't have to 
 add the font stuff, but I'm doing so to make my maze a little
 easier to navigate.
 */
PFont font;

void setup() {
  size(400, 400);
  background(0);
  fill(255);

  font = loadFont("CourierNewPS-BoldMT-48.vlw");
  textFont(font, 18);

  /*
Processing has the ability to understand customized functions.
   We've used two standard ones so far: setup() and draw(). By
   making my own, I can set aside some chunks of code from setup()
   and draw(), and have either one call on my custom function when
   I want it to. In order to do this, though, I have to define it - 
   which I've done further down the sketch file. Right here, I'm
   asking setup() to run the maze() function once before it goes on
   to the draw() function.
   */
  maze();

  /*
millis() is a count, in milliseconds, of how long it's been
   since the program began. I'm setting it now because it takes
   a few milliseconds to get to this point, and I don't want to 
   trigger my maze's "walls of death" too early.
   */
  start_time = millis();
}

/*
Here is my custom function, defined. These start with 'void'
 because they perform their calculations in and of themselves
 and don't send any data/values to anything else outside of
 themselves.
 */

void maze() {
  fill(255);

  /*
I can make an array of pretty much any data type - here, I'm
   setting up an array where each element is a single character.
   Note that one element is the " " (space) character.
   */
  char[] maze = { 
    '|', ' ', '_', '-'
  };

  /*
The following for() loops set the distance between maze array
   elements in order to provide a challenging but not entirely
   impossible set of paths through the maze.
   */
  for (int x = -5; x < width + 5; x+=6) {
    for (int y = -5; y < height + 5; y+=16) {
      /*
Here, I'm drawing text that will grab a random element of the 
       maze array in order to keep the user on his or her toes - you
       can't be sure until you see it what a maze is going to look
       like.
       */
      text(maze[int(random(4))], x, y);
    }
  }
}

void draw() {
  /*
This first part is a bit tricky - I'm setting up a calculation
   to check the current milliseconds from the program's start time
   compared with the current time in milliseconds. Then it divides
   the amount by 1000 and checks the remainder. You can see this
   calculation in action if you uncomment the println(interval) line
   below this comment.
   */
  // println(interval);
  interval = ((millis() - start_time)%1000);
  if ((interval > inc_rate) && !failed) {

    /*
When the interval amount is above 900 (our current check number),
     and our maze is NOT set to "failed" - more on that below - then
     we draw two rectangles without borders (that's the noStroke() 
     part) whose dimensions are based on the size of the window and
     the wall_size variable, which gets 1 bigger every time interval
     gets above 900.
     */
    noStroke();
    fill(255);
    rect(0, 0, wall_size, height);
    rect(0, 0, width, wall_size);
    //    wall_size++;

    /*
As our rectangle wall_size variable gets larger, our speed at
     which it grows also increases (inc_rate drops to every 800,
     and then every 700, and then 600). This means the rectangle walls
     get larger /and/ faster as someone takes longer to complete
     the maze.
     */
    if ((wall_size >= 100) && (wall_size < 200)) {
      inc_rate = 800;
    } 
    else if ((wall_size >= 200) && (wall_size < 300)) {
      inc_rate = 700;
    } 
    else if (wall_size >= 300) {
      inc_rate = 600;
    }

    /*
The following checks to see if the user's mouse hits any of the
     walls (the characters made by the maze array above). I can make
     this check by looking at the color value for any given pixel
     as taken by the get() function, which provides a number based
     on the color for a given x,y coordinate. You can see how it works
     by uncommenting the println(get(mouseX,mouseY)); line below.
     Since I want it to only act when the mouse is NOT on a black 
     pixel (since that's the 'floor'), I check for when get() provides
     a result that is NOT the number it uses for the color black.
     */
    // println(get(mouseX,mouseY));
    for (int x = key_x; x < (key_x + 5); x++) {
      for (int y = key_y; y < (key_y + 5); y++) {
        if (get(x, y) == -1) {

          //   if (get(mouseX, mouseY) != -16777216) {
          background(0, 0, 0);
          fill(255, 0, 0);
          textAlign(CENTER);
          text("YOU LOSE", width/2, height/2); 
          /*
I'm changing my boolean variable to TRUE here so that our maze
           will stop trying to crush us to death, metaphorically speaking.
           This lets us take a breath and reset ourselves with the
           mousePressed() function a bit below. We can also reset our
           wall_size amount so that, when we begin again, we're not on the
           verge of getting crushed.
           */
          counter++;
          failed = true;
          wall_size = 0;
        } 


        /*
I'm including a blank else condition here just to show you that
         I don't care about anything special happening when the above
         condition isn't met.
         */
        else {
        }
      }
    }
  }

  /*
If someone makes it to the bottom right corner of the window,
   then we can trigger another custom function - the victory()
   screen.
   */
  if ((key_x > 390) && (key_y > 390)) {
    victory();
  }
  if (!failed) {
    fill(0, 255, 0);
    rect(key_x, key_y, 5, 5);
  }
}


void keyPressed() {
  if (!failed) {
    if (key == 'w') {
      key_y--;
    } 
    else if (key == 'a') {
      key_x--;
    } 
    else if (key == 's') {
      key_y++;
    } 
    else if (key == 'd') {
      key_x++;
    }
  }
}

/*
When someone clicks his or her mouse, nothing happens UNLESS
 we are currently in a 'failed' state. If this is true, then we
 can reset everything and draw a new maze() to give the person a
 new chance at winning.
 */
void mousePressed() {
  if (failed) {
    background(0);
    maze();
    counter++;
    failed = false;
  }
}

/*
When someone gets to the bottom right corner, we can trigger
 a special victory screen to let that person know he or she won
 and how many 'failures' it took to succeed.
 */
void victory() {
  failed = true;
  background(0, 0, 255);
  textAlign(CENTER);
  text("YOU WIN! \n in " + counter + " attempts!", width/2, height/2);
  wall_size = 0;
}
