import processing.opengl.*;

PImage texture1;
PImage texture2;

void setup() {  
  size(680, 500, P3D);
  noStroke();
  
  texture1 = loadImage("1.jpg");
  texture2 = loadImage("2.jpg"); 
}

void draw() {  
  background(255);

  textureMode(IMAGE);
  pushMatrix();
  translate(width/4, height/2, 0);
  rotateY(radians(frameCount));
  beginShape();
  texture(texture1);
  vertex(-150, -250, 0, 0); 
  vertex(150, -250, 640, 0); 
  vertex(150, 250, 640, 940); 
  vertex(-150, 250, 0, 940); 
  endShape(CLOSE);
  popMatrix();
  
  textureMode(NORMAL);
  pushMatrix();
  translate(width*.75, height/2, 0);
  rotateY(radians(-frameCount));
  beginShape();
  texture(texture2);
  vertex(-150, -250, 0, 0); 
  vertex(150, -250, 1, 0); 
  vertex(150, 250, 1, 1); 
  vertex(-150, 250, 0, 1); 
  endShape(CLOSE);
  popMatrix();
}