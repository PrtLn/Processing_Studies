void setup() {
  size (640, 480);
  smooth();
  background(255);
}

void draw() {}

// erases the screen
void mousePressed() {
  if (mouseButton == RIGHT) {
    background(255);
  }
}

// leaves a trail of white transparent circles with a transparent black border
void mouseMoved() {
  stroke(0, 64);
  strokeWeight(1);
  fill(255, 32);
  float d = dist(mouseX, mouseY, pmouseX, pmouseY);
  constrain(d, 8, 100);
  ellipse(mouseX, mouseY, d, d);
}

// draws the black lines
void mouseDragged() {
  stroke(0);
  float d = dist(mouseX, mouseY, pmouseX, pmouseY);
  constrain(d, 0, 100);
  float w = map(d, 0, 100, 1, 10);
  strokeWeight(w);
  line(mouseX, mouseY, pmouseX, pmouseY);
}

// draws a transparant white rectangle with the size of the window on top of everything
void mouseReleased() {
  noStroke();
  fill(255, 16);
  rect(0, 0, width,height);
}

// draws the transparent red circle with random size when left button of mouse is clicked
void mouseClicked() {
  fill(255, 0, 0, 128);
  float d = random(20, 200);
  ellipse(mouseX, mouseY, d, d);
}