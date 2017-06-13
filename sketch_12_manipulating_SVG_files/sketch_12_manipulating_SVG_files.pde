PShape snowFlake;
PShape small1;
PShape small2;
PShape small3;
PShape small4;
PShape small5;
PShape small6;
PShape big;

void setup() {
  size(640, 480);
  smooth();

  snowFlake = loadShape("snowFlake.svg");

  small1 = snowFlake.getChild("small1");
  small2 = snowFlake.getChild("small2");
  small3 = snowFlake.getChild("small3");
  small4 = snowFlake.getChild("small4");
  small5 = snowFlake.getChild("small5");
  small6 = snowFlake.getChild("small6");
  big = snowFlake.getChild("big");
  
  shapeMode(CENTER);
}

void draw() {
  background(250);

  // regular snowflake
  shape(snowFlake, 160, 130);

  // distorted snowflake
  shape(snowFlake, 470, 130, 200, 120);

  // orange snowflake
  snowFlake.disableStyle();
  fill(255, 128, 0);
  stroke(255);
  strokeWeight(3);
  shape(snowFlake, 160, 350);
  snowFlake.enableStyle();

  // draw separate parts (colorful star)
  strokeWeight(2);
  stroke(38, 60, 186);
  small1.disableStyle();
  fill(151, 183, 189);
  shape(small1, 470, 350);
  small1.enableStyle();
  
  small2.disableStyle();
  fill(108, 223, 234);
  shape(small2, 470, 350);
  small2.enableStyle();
  
  small3.disableStyle();
  fill(151, 183, 189);
  shape(small3, 470, 350);
  small3.enableStyle();
  
  small4.disableStyle();
  fill(108, 223, 234);
  shape(small4, 470, 350);
  small4.enableStyle();
  
  small5.disableStyle();
  fill(151, 183, 189);
  shape(small5, 470, 350);
  small5.enableStyle();
  
  small6.disableStyle();
  fill(108, 223, 234);
  shape(small6, 470, 350);
  small6.enableStyle();
  
  strokeWeight(3);
  big.disableStyle();
  fill(38, 60, 186);
  stroke(255);
  shape(big, 470, 350);
  big.enableStyle();
}