int Mode = 1; 
Ball b = new Ball(50, 5, width/2, height/2); 
ArrayList<Bullet> arr = new ArrayList<Bullet>(); 
int time = millis(); 
void setup() {
  size(800, 800);
}
void draw() {
  switch(Mode) {
  case 1: 
    background(0); 
    text("PewPew", height/2, width/2); 
    if (mousePressed) Mode = 2; 
    break;
  case 2: 
    background(255); 
    fill(0, 0, 255);
    ellipse(b.getPosx(), b.getPosy(), b.getSize(), b.getSize()); 
    for (int i = 0; i<arr.size(); i++) {
      fill(0, 255, 0); 
      ellipse(arr.get(i).getPosx(), arr.get(i).getPosy(), arr.get(i).getSize(), arr.get(i).getSize());
      arr.get(i).Move();
    }
    if (mousePressed && millis()-time>=200) {
      time = millis(); 
      arr.add(new Bullet(20, b.getPosx(), b.getPosy(), mouseX, mouseY));
      System.out.println(b.getPosx()+" "+b.getPosy());
      System.out.println(arr.get(arr.size()-1).getPosx()+" "+ arr.get(arr.size()-1).getPosy());
    }
    break;
  }
}
void keyPressed() {
  switch(key) {
  case 'a':
    b.Left(); 
    break; 
  case 'd':
    b.Right(); 
    break; 
  case 'w':
    b.Up(); 
    break; 
  case 's':
    b.Down(); 
    break;
  }
}
