float x;
float y;
int b;

void setup() {
  size(displayWidth, displayHeight);
  smooth();
  
  x = 0;
  y = 0;
  
  background(0);
  noFill();
}

void draw() {
  b++;
  if(b > 255) {
    b = 0;
  }
  
  x += random(50, 50);
  if(x > width) {
    x = 0;
    y += random(60, 100);
    if (y > height) {
      y = 0;
    }
  }
  
  stroke(0, random(255), b, 150);
  float r = random(18, 190);
  ellipse(x, y, r, r);
  rect(x,y, random(width/4), random(height/4));
}