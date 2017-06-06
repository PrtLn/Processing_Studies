int x;
int y;
int r;
color c;
boolean drawStroke;

void setup() {
  size (640, 480);
  smooth();
  strokeWeight(2);
  
  x = width/2;
  y = height/2;
  r = 80;
  c = color(255, 0, 0);
  drawStroke = true;
}

// draws white background and red circle in the center
void draw() {
  background(255);
  
  if (drawStroke == true) {
    stroke(0);
  } else {
    noStroke();
  }
  
  fill(c);
  ellipse(x, y, r*2, r*2);
}

// using the arrow keys to move the ball around
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      x += 10;
    } else if (keyCode == LEFT) {
      x -= 10;
    } else if (keyCode == UP) {
      y -= 10;
    } else if (keyCode == DOWN) {
      y += 10;
    }
  }
  
  x = constrain(x, r, width-r);
  y = constrain(y, r, height-r);
}

// R, G, B, C, M, Y keys will change the color of the ball
void keyReleased() {
  switch (key) {
    case 'r':
      c = color(255, 0, 0);
      break;
    case 'g':
      c = color(0, 255, 0);
      break;
    case 'b':
      c = color(0, 0, 255);
      break;
    case 'c':
      c = color(0, 255, 255);
      break;
    case 'm':
      c = color(255, 0, 255);
      break;
    case 'y':
      c = color(255, 255, 0);
      break;
    default:
      break;
  }
}

// S key will toggle the stroke
void keyTyped() {
  if (key == 's') {
    drawStroke = !drawStroke;
  }
}