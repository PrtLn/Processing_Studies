import processing.pdf.*;

boolean savePDF = false;

void setup() {
  size(540, 480);
  smooth();
  rectMode(CENTER);
  stroke(0);
}

void draw() {
  if(savePDF) {
    beginRecord(PDF, "pdf/myartwork-####.pdf");
  }
  
  background(0);
  for(int i = 0; i < 1000; i++) {
    fill(0, random(255), random(255), 128);
    pushMatrix();
    translate(random(width), random(height));
    rotate(radians(random(360)));
    rect(0, 0, 50, 50);
    popMatrix();
  }
  
  if(savePDF) {
    endRecord();
    savePDF = false;
  }
}

void keyPressed() {
  if(key == 's') {
    savePDF = true;
  }
}