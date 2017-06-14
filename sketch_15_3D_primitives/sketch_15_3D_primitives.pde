import processing.opengl.*;

void setup() {
  size(640, 480, P3D);
  smooth();
}

void draw() {
  background(255);
  lights();
  float angleY = radians(frameCount);
  
  // 3D cube
  pushMatrix();
  translate(width * 0.3, height * 0.3);
  rotateY(angleY);
  fill(0, 255, 255);
  box(100);
  popMatrix();
  
  // 3D parallelepiped
  pushMatrix();
  translate(width * .5, height * .5);
  rotateY(angleY);
  fill(0, 255, 0);
  box(100, 40, 500);
  popMatrix();
  
  // 3D sphere with high mesh
  pushMatrix();
  translate(width * .7, height * .3);
  rotateY(angleY);
  fill(255, 0, 0);
  sphereDetail(30);
  sphere(75);
  popMatrix();
  
  // 3D sphere with low mesh
  pushMatrix();
  translate(width * .3, height * .7);
  rotateY(angleY);
  fill(255, 255, 0);
  sphereDetail(6);
  sphere(75);
  popMatrix();
  
  // 3D sphere with low mesh
  pushMatrix();
  translate(width * .7, height * .7);
  rotateY(angleY);
  fill(255, 0, 255);
  sphereDetail(4, 20);
  sphere(75);
  popMatrix();
}