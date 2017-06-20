void setup() {
  size(640, 480);
  smooth();
}

void draw() {
  background(0);
  for(int i = 0; i < 1000; i++) {
    fill(random(255), 64);
    stroke(255, 128);
    ellipse(random(width), random(height), 40, 40);
  }
  
  if(keyPressed) {
    saveFrame("images/artwork-####.png");
  }
}