import processing.opengl.*;

void setup() {
  size(640, 480, OPENGL);
  smooth();
}

void draw() {
  background(255);
  
  noFill();
  
  for(int i = 0; i < 15; i++) {
    pushMatrix();
    translate((i*40) + 20, 0);
    bezierDetail(i + 4);  // sets the detail of the Bezier curbve (by default is 20)
    stroke(0);
    bezier(0,20, 50, 10 ,80, 100, 30, 200);  // draws a Bizier curve to the screen
    stroke(255, 0 ,0, 128);
    line(0, 20, 50, 10);
    line(80, 100, 30, 200);
    popMatrix();
  }
  
  float t = map(mouseX, 0, width, -5.0, 5.0);
  curveTightness(t);  // sets the tightness of the curve
  
  for(int i = 0; i < 15; i++) {
    pushMatrix();
    translate((i * 40) + 20, 220);
    curveDetail(i + 4);
    stroke(0);
    curve(10, 50, 0, 20, 30, 200, -50, 250);  // draws a curve to the screen (Calmut-Rom spline)
    stroke(255, 0, 0, 128);
    line(10, 50, 0, 20);
    line(30, 200, -50, 250);
    popMatrix();
  }
}