PImage img;

// some settings to play with 
boolean pixelMode = false;
int copyWidth = 25;
int copyHeight = 25;

void setup() {
  size(427, 600);
  smooth();
  
  img = loadImage("tears_for_fears.jpg");
}

void draw() {
  int x1 = floor(random(width));
  int y1 = floor(random(height));  
  int x2 = floor(random(width));
  int y2 = floor(random(height));
  
  // pixelMode switches between changing single pixels or areas of pixels
  if (pixelMode == true) {
    // to copy of pixels
    color c1 = img.get(x1, y1);
    color c2 = img.get(x2, y2);
    // and change their places
    img.set(x1, y1, c2);
    img.set(x2, y2, c1);
  } else {
    PImage crop1 = img.get(x1, y1, copyWidth, copyHeight);
    PImage crop2 = img.get(x2, y2, copyWidth, copyHeight);
    img.set(x1, y1, crop2);
    img.set(x2, y2, crop1);
  }
  
  image(img, 0, 0);
}