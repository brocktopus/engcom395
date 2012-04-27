/*
'Dracula in Letters' - Kevin Brock (kevin_brock@ncsu.edu)
An example of visualized, quantitative reading.

This project is built upon the 'HashMap example' sketch provided with
Processing, available via Examples > Advanced Data > HashMapClass
(see the comment directly beneath this one for more about it). It is meant to
show another means of counting tokens in the novel - in this case, letters
rather than words, and visualizing them in two different ways:
1) A counter noting the number of times each letter appears, as the sketch
reads through the novel.
2) A bar graph that stretches horizontally a number of pixels equal to the
number of occurrences of the letter in the novel, as the sketch reads through it.
*/

/**
 * HashMap example
 * by Daniel Shiffman.  
 * 
 * This example demonstrates how to use a HashMap to store 
 * a collection of objects referenced by a key.
 * This is much like an array, only instead of accessing elements
 * with a numeric index, we use a String.
 * If you are familiar with associative arrays from other languages,
 * this is the same idea.
 *
 * This example uses the HashMap to perform a simple concordance
 * http://en.wikipedia.org/wiki/Concordance_(publishing)
 */


HashMap letters;  // HashMap object

String[] tokens;  // Array of all words from input file
String tokenstring;
int counter;

PFont f;

void setup() {
  size(640, 700);
  letters = new HashMap();

  // Load file and chop it up
  String[] lines = loadStrings("dracula.txt");
  String allText = join(lines, " ");
  tokens = splitTokens(allText);
  tokenstring = join(tokens,"");
  f = createFont("Georgia", 36, true);  
}

void draw() {
  background(255);
  fill(0);
  
  // Look at words one at a time
//  String s = tokens[counter];
  char s = tokenstring.charAt(counter);
  counter = (counter + 1) % tokenstring.length();

  // Is the word in the HashMap
  if (letters.containsKey(s)) {
    // Get the word object and increase the count
    // We access objects from a HashMap via its key, the String
    Letter w = (Letter) letters.get(s);
    w.count(); 
  } else {
    // Otherwise make a new word
    Letter w = new Letter(s);
    // And add to the HashMap
    // put() takes two arguments, "key" and "value"
    // The key for us is the String and the value is the Word object
    letters.put(s, w);    
  }

  // Make an iterator to look at all the things in the HashMap
  Iterator i = letters.values().iterator();

  // x and y will be used to locate each word
  float x = 0;
  float y = height-10;

  while (i.hasNext()) {
    // Look at each word
    Letter w = (Letter) i.next();
    
    // Only display words that appear 3 times
    if (w.count > 3) {
      // The size is the count
      int fsize = constrain(w.count, 0, 100);
 //     textFont(f, fsize);
//      text(w.letter, x, y);
drawLetter(w);
drawGraph(w);
      // Move along the x-axis
      x += textWidth(w.letter + " ");
    }
    
    // If x gets to the end, move Y
    if (x > width) {
      x = 0;
      y -= 50;
      // If y gets to the end, we're done
      if (y < 0) {
        break; 
      }
    }
  } 
}
