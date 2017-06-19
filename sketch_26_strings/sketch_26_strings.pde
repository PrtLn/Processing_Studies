String word = "Hello";
String[] textArray;
String wordList = "String,theory,is,confusing";

void setup() {
  textArray = new String[3];
  textArray[0] = "Man";
  textArray[1] = "Bear";
  textArray[2] = "Pig";
  
  noLoop();
}

void draw() {
  println("Word: charAt(1): " + word.charAt(1));  //e
  println("Word: length(): " + word.length());  // 5
  println("Word: substring(2, 4): " + word.substring(2, 4));  // ll
  println("Word: toLowerCase(): " + word.toLowerCase());  // hello
  println("Word: toUpperCase(): " + word.toUpperCase());  // HELLO
  println("Word: indexOf(\"1\"): " + word.indexOf("1")); // -1
  
  if(word.equals("Hi")) {
    println("Hi there !");
  } else {
    println("The word is not Hi");
  }  
  
  println("---");  
  String joined = join(textArray, "");
  println(joined);  // ManBearPig
  
  println("---");  
  String[] words = split(wordList, ",");
  println((Object)words);  // [0] "String" [1] "theory" [2] "is" [3] "confusing"
  
  println("---");
  println(trim("  I was a sentence with too much whitespace.    "));  // I was a sentence with too much whitespace.

}