import processing.opengl.*;

void setup() {  
  size(640, 480, P3D);
  smooth();
}

void draw() {
  background(255); 

  pushMatrix();
  translate(width*.2, height*.3, 0);
  rotateY(radians(frameCount));
  fill(255, 0, 0);
  cylinder(30, 100, 50);
  popMatrix();

  pushMatrix();
  translate(width*.6, height*.5, 200);
  rotateY(radians(frameCount));
  fill(255, 255, 0);
  cylinder(4, 200, 50);
  popMatrix();

  pushMatrix();
  translate(width*.1, height*.7, -200);
  rotateY(radians(frameCount));
  fill(0, 0, 255);
  cylinder(3, 200, 30);
  popMatrix();
}

void cylinder(int numSegments, float h, float r) {
  float angle = 360.0 / (float)numSegments;

  // top (cap)
  beginShape();
  for (int i = 0; i < numSegments; i++) {
    float x = cos(radians(angle * i)) * r;
    float y = sin(radians(angle * i)) * r;
    vertex(x, y, -h/2);
  }
  endShape(CLOSE);

  // side
  beginShape(QUAD_STRIP);
  for (int i = 0; i < numSegments + 1; i++) {
    float x = cos(radians(angle * i)) * r;
    float y = sin(radians(angle * i)) * r;
    vertex(x, y, -h/2);
    vertex(x, y, h/2);
  }
  endShape();

  // bottom (cap)
  beginShape();
  fill(128);
  for (int i = 0; i < numSegments; i++) {
    float x = cos(radians(angle * i)) * r;
    float y = sin(radians(angle * i)) * r;
    vertex(x, y, h/2);
  }
  endShape(CLOSE);
}