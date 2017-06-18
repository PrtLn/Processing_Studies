String[] textLines;

void setup() {
 textLines = loadStrings("list.csv");
 noLoop();
}

void draw() {
  
  println("\tThe List of games for the learning to code\n");
  for(int i = 0; i < textLines.length; i++) {
    String[] currentLine = split(textLines[i], ", ");
    for(int j = 1; j < currentLine.length; j++) {
      println(currentLine[j]);
    }
    println("\t---");
  }
}