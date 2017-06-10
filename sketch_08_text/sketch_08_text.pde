PFont trajanPro;
PFont ebrima;
PFont embassy;

void setup() {
  size(640, 480);
  smooth();

  trajanPro = loadFont("TrajanPro-Bold-48.vlw");
  ebrima = loadFont("Ebrima-48.vlw");
  embassy = loadFont("EmbassyBT-Regular-48.vlw");

  strokeCap(SQUARE);
}

void draw() {
  background(255);
  fill(128, 0, 0);
  textFont(trajanPro, 44);
  textAlign(LEFT);
  text("Hello, I'm TrajanPro", 20, 50);

  textFont(embassy, 34);
  text("I'm a line of text, set in EmbassyBT", 20, 85);

  stroke(128, 0, 0);
  strokeWeight(1);
  line(20, 94, 620, 94);
  line(20, 96, 620, 96);

  //
  fill(0);
  textFont(ebrima, 24);
  text("The quick brown fox jumps over the lazy dog. (24)", 20, 130);  
  textFont(ebrima, 18);
  text("Pack my box with five dozen liquor jugs. (18)", 20, 154);
  textFont(ebrima, 12);
  text("Blowzy red vixens fight for a quick jump. (12)", 20, 172);

  stroke(128);
  strokeWeight(3);
  line(20, 186, 620, 186);
  
  // drawing rectangle for containing the text
  fill(245);
  stroke(128);
  strokeWeight(1);
  rect(20, 192, 600, 110);
  
  // line that to align three lines of text to the left-hand side, right-hand side, and center of it
  stroke(128);
  line(width/2, 192, width/2, 298);
  
  fill(128);
  stroke(128);
  triangle(width/2-4, 192, width/2+4, 192, width/2, 196);
  triangle(width/2-4, 302, width/2+4, 302, width/2, 298);
  
  // aligning text into the rectangle
  fill(0);
  textFont(ebrima, 24);
  textAlign(LEFT);
  text("since I left you", width/2, 225);
  textAlign(CENTER);
  text("symmetry is boring", width/2, 252);
  textAlign(RIGHT);
  text("flush to the right", width/2, 280);
  
  // change the leading for each block of text
  textFont(ebrima, 14);
  textAlign(LEFT);
  String multiline = "In typography, leading refers\n";
  multiline += "to the distance between the\n";
  multiline += "baseline of successive lines\n";
  multiline += "of type.";
  
  float standartLeading = (textAscent() + textDescent()) * 1.275f;
  
  textLeading(standartLeading);
  text(multiline, 20, 340);
  textLeading(standartLeading * 0.75);
  text(multiline, 220, 340);
  textLeading(standartLeading * 1.5);
  text(multiline, 420, 340);
  
  // creating the textWidth() function to calculate the width of a line of text
  textFont(trajanPro, 38);
  String s = "textWidth";
  float w = textWidth(s);
  fill(128, 0, 0);
  text(s, 20, 450);
  noStroke();
  rect(20, 455, w, 8);
}