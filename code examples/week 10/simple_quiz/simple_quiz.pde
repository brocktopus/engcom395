int counter = 0;
int clickeda = 0;
int clickedb = 0;
boolean clicked_either = false;

String[] question = {
  "This is question 1?", 
  "This is question 2?", 
  "This is question 3?", 
  "This is question 4?", 
  "This is question 5?"
};

String[] optionA = {
  "This is option a for question 1", 
  "This is option a for question 2", 
  "This is option a for question 3", 
  "This is option a for question 4", 
  "This is option a for question 5"
};

String[] optionB = {
  "This is option b for question 1", 
  "This is option b for question 2", 
  "This is option b for question 3", 
  "This is option b for question 4", 
  "This is option b for question 5"
};


void setup() {
  size(400, 400);
  textAlign(CENTER);
  fill(0);
}

void draw() {
  background(255);
  if (counter < 5) {
    text(question[counter], width/2, 20); 
    text(optionA[counter], 100, 100);
    text(optionB[counter], 300, 100);
    if (clicked_either) {
      drawConfirm();
    }
  } 
  else {
    background(255);
    text("ALL DONE!", width/2, 100);
    text("Option A clicked " + clickeda + " times", width/2, 250);
    text("Option B clicked " + clickedb + " times", width/2, 300);
  }
}

void mousePressed() {
  if (!clicked_either) {
    if ((mouseX > 20) && (mouseX < 200) && (mouseY > 50) && (mouseY < 150)) {
      clickeda++;
      clicked_either = true;
    }

    if ((mouseX > 220) && (mouseX < 380) && (mouseY > 50) && (mouseY < 150)) {
      clickedb++;
      clicked_either = true;
    }
  }

  if (clicked_either) {
    if ((mouseX > 300) && (mouseX < 400) && (mouseY > 300) && (mouseY < 400)) {
      counter++;
      clicked_either = false;
    }
  }
}

void drawConfirm() {
  text("NEXT!", 350, 350);
}

