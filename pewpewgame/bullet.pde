class Bullet extends Object {
  private int size; 
  private float posx, posy; 
  private float speedx, speedy; 
  public Bullet(int size, int posbx, int posby, int posmx, int posmy) {
    this.size = size; 
    posx = posbx; 
    posy = posby; 
    
    PVector aim = new PVector((posmy-posby)/30 , (posmx-posbx)/30); 
    aim.setMag(10); 
    //float tempx = posmx-posbx; 
    //float tempy = posmy-posby; 

    //speedy = 1; 
    //speedx = tempx/tempy; 
    speedy = aim.x; 
    speedx = aim.y; 
    //speedx = map(x, -width, width, -20, 20); 
    //speedy = map(y, -height, height, -20, 20); 
    //if (y<0) {
    //  speedy = -5; 
    //  speedx = (x*-5)/y;
    //} else {
    //  speedy = 5;
    //  speedx = (x*5)/y; 
    //}
  }
  public int getSize() {
    return size;
  }
  public float getPosx() {
    return posx;
  }
  public float getPosy() {
    return posy;
  }
  public void Move() {
    posx+=speedx; 
    posy+=speedy;
  }
}
