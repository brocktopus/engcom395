void drawGraph(Letter i) {
  switch(i.letter) {
  case 'a':
    text("a", 10, 410);
    fill(180);
    rect(20, 400, i.count, 10);
    fill(0);
    break;
  case 'b':
    text("b", 10, 420);
    rect(20, 410, i.count, 10);
    break;
  case 'c':
    text("c", 10, 430);
    fill(180);
    rect(20, 420, i.count, 10);
    fill(0);
    break;
  case 'd':
    text("d", 10, 440);
    rect(20, 430, i.count, 10);
    break;
  case 'e':
    text("e", 10, 450);
    fill(180);
    rect(20, 440, i.count, 10);
    fill(0);
    break;
  case 'f':
    text("f", 10, 460);
    rect(20, 450, i.count, 10);
    break;
  case 'g':
    text("g", 10, 470);
    fill(180);
    rect(20, 460, i.count, 10);
    fill(0);
    break;
  case 'h':
    text("h", 10, 480);
    rect(20, 470, i.count, 10);
    break;
  case 'i':
    text("i", 10, 490);
      fill(180);
    rect(20, 480, i.count, 10);
    fill(0);
    break;
  case 'j':
    text("j", 10, 500);
    rect(20, 490, i.count, 10);
    break;
  case 'k':
    text("k", 10, 510);
      fill(180);
    rect(20, 500, i.count, 10);
    fill(0);
    break;
  case 'l':
    text("l", 10, 520);
    rect(20, 510, i.count, 10);
    break;
  case 'm':
    text("m", 10, 530);
      fill(255);
    rect(20, 520, i.count, 10);
    fill(0);
    break;
  case 'n':
    text("n", 10, 540);
    fill(180);
    rect(20, 530, i.count, 10);
    fill(0);
    break;
  case 'o':
    text("o", 10, 550);
    rect(20, 540, i.count, 10);
    break;
  case 'p':
    text("p", 10, 560);
    fill(180);
    rect(20, 550, i.count, 10);
    fill(0);
    break;
  case 'q':
    text("q", 10, 570);
    rect(20, 560, i.count, 10);
    break;
  case 'r':
    text("r", 10, 580);
    fill(180);
    rect(20, 570, i.count, 10);
    fill(0);
    break;
  case 's':
    text("s", 10, 590);
    rect(20, 580, i.count, 10);
    break;
  case 't':
    text("t", 10, 600);
    fill(180);
    rect(20, 590, i.count, 10);
    fill(0);
    break;
  case 'u':
    text("u", 10, 610);
    rect(20, 600, i.count, 10);
    break;
  case 'v':
    text("v", 10, 620);
    fill(180);
    rect(20, 610, i.count, 10);
    fill(0);
    break;
  case 'w':
    text("w", 10, 630);
    rect(20, 620, i.count, 10);
    break;
  case 'x':
    text("x", 10, 640);
    fill(180);
    rect(20, 630, i.count, 10);
    fill(0);
    break;
  case 'y':
    text("y", 10, 650);
    rect(20, 640, i.count, 10);
    break;
  case 'z':
    text("z", 10, 660);
    fill(180);
    rect(20, 650, i.count, 10);
    fill(0);
    break;

    /*
  case 'A':
     text(i.letter + ": " + i.count, 220, 20);
     break;
     case 'B':
     text(i.letter + ": " + i.count, 220, 40);
     break;
     case 'C':
     text(i.letter + ": " + i.count, 220, 60);
     break;
     case 'D':
     text(i.letter + ": " + i.count, 220, 80);
     break;
     case 'E':
     text(i.letter + ": " + i.count, 220, 100);
     break;
     case 'F':
     text(i.letter + ": " + i.count, 220, 120);
     break;
     case 'G':
     text(i.letter + ": " + i.count, 220, 140);
     break;
     case 'H':
     text(i.letter + ": " + i.count, 220, 160);
     break;
     case 'I':
     text(i.letter + ": " + i.count, 220, 180);
     break;
     case 'J':
     text(i.letter + ": " + i.count, 220, 200);
     break;
     case 'K':
     text(i.letter + ": " + i.count, 220, 220);
     break;
     case 'L':
     text(i.letter + ": " + i.count, 220, 240);
     break;
     case 'M':
     text(i.letter + ": " + i.count, 220, 260);
     break;
     case 'N':
     text(i.letter + ": " + i.count, 320, 20);
     break;
     case 'O':
     text(i.letter + ": " + i.count, 320, 40);
     break;
     case 'P':
     text(i.letter + ": " + i.count, 320, 60);
     break;
     case 'Q':
     text(i.letter + ": " + i.count, 320, 80);
     break;
     case 'R':
     text(i.letter + ": " + i.count, 320, 100);
     break;
     case 'S':
     text(i.letter + ": " + i.count, 320, 120);
     break;
     case 'T':
     text(i.letter + ": " + i.count, 320, 140);
     break;
     case 'U':
     text(i.letter + ": " + i.count, 320, 160);
     break;
     case 'V':
     text(i.letter + ": " + i.count, 320, 180);
     break;
     case 'W':
     text(i.letter + ": " + i.count, 320, 200);
     break;
     case 'X':
     text(i.letter + ": " + i.count, 320, 220);
     break;
     case 'Y':
     text(i.letter + ": " + i.count, 320, 240);
     break;
     case 'Z':
     text(i.letter + ": " + i.count, 320, 260);
     break;
     */
  default:
    break;
  }
}

