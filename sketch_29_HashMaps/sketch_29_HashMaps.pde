//import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

HashMap<String, Float> hm;

void setup() {
  hm = new HashMap<String, Float>();
  hm.put("Green Coffee", 51.30);
  hm.put("Black Tea", 30.45);
  hm.put("milk", 12.78);
  
  noLoop();
}

void draw() {
  Iterator i = hm.entrySet().iterator();
  while(i.hasNext()) {
    Map.Entry me = (Map.Entry)i.next();
    println("Key: " + me.getKey() + ", Value: " + me.getValue());
  }
  println("-------");
  
  println("Is Empty? " + hm.isEmpty());
  println("Get 'milk': " + hm.get("milk"));
  
  println("Number of Elements (before remove): " + hm.size());
  println("Removed: " + hm.remove("Black Tea"));
  println("Number of Elements (after remove): " + hm.size());
  
  println("Contains key 'Black Tea': " + hm.containsKey("Black Tea"));
}