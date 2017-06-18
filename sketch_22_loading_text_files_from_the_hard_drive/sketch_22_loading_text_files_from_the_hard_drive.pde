String[] textLines;

void setup() {
  size(640, 480);
 smooth();
 
 textLines = loadStrings("poem.txt");
 noLoop();
}

void draw() {
  background(255);
  translate(150, height/2);
  
  stroke(128);
  fill(225, 128);
  
  for(int i = 0; i < textLines.length; i++) {
    float d = textLines[i].length();
    ellipse(i * 35, 0, d, d);
    println(i + ". " + textLines[i]);
  }
}