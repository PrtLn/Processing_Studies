int number1 = 65;
float number2 = 7.537;

void setup() {
  noLoop();
}

void draw() {
  // convert int to float
  println(float(number1));  // 65.0

  // convert float to int
  println(int(number2));  // 7
  
  // convert a number to a binary string
  println(binary(number1));  // 00000000000000000000000001000001
  
  // convert a binary string to a number
  println(unbinary("0010110011100110"));  // 11494
  
  // convert numbers or a string to a boolean
  println(boolean(1));  // true
  println(boolean(number1));  // true
  println(boolean(0));  // false
  println(boolean("true"));  // true
  
  // convert char to byte
  println(byte('A'));  // 65
  
  // convert byte to char
  println(char(number1));  // A
  
  // convert number and color to hex string
  println(hex(number1));  // 00000041
  println(hex(color(255, 0, 255)));  // FFFF00FF
  
  // convert hex string to number
  println(unhex("FF00CC")); // 16711884
  
  // convert number to string
  println(str(-number2)); // -7.537
}