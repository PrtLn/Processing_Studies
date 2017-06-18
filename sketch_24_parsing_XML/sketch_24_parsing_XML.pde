XML xml;

void setup() {
 xml = loadXML("list-websites.xml");
 noLoop();
}

void draw() {
  XML[] kids = xml.getChildren("website");
  
  println("\tThe List of games for the learning to code\n");
  
  for(int i = 0; i < kids.length; i++) {
    int id = kids[i].getInt("id");
    String url = kids[i].getString("url");
    String txt = kids[i].getContent();
    println(i + ": " + id + " " + url + " - " + txt);
  }
}