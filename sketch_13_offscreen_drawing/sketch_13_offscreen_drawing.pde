PGraphics pg;

float x;
float y;

void setup() {
  size(640, 480);
  smooth();
  
  pg = createGraphics(64, 64, JAVA2D);
  
  background(255);
  imageMode(CENTER);
  
  x = 0;
  y = 0;
}

void draw() {
  pg.beginDraw();
  pg.background(255, 0, 0, 1);
  pg.smooth();
  
  for(int i = 0; i < 1; i++) {
    pg.stroke(0, random(255), 0);
    //pg.line(random(pg.width), random(pg.height), 
    //        random(pg.width), random(pg.height));
    pg.noFill();
    pg.ellipse(random(pg.width), random(pg.height), 
              random(pg.width), random(pg.height));
  }
  pg.endDraw();
  
  image(pg, x, y);
  
  x += random(18, 28);
  if(x > width) {
    x = 0;
    y += random(36, 66);
    if(y > height) {
      y = 0;
      fill(255, 32);
      noStroke();
      rect(0, 0, width, height);
    }
  }
}

// clears the screen and fills it with white or black color
void mousePressed() {
  if(random(100) < 50) {
    background(0);
  } else {
    background(255);
  }
}