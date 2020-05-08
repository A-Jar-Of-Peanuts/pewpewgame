class Ball extends Object{
  private int size; 
  private int speed; 
  private int posx, posy; 
  public Ball(int size, int speed, int posx, int posy) {
    this.size = size; 
    this.speed = speed; 
    this.posx = posx; 
    this.posy = posy; 
  }
  public int getSize(){
    return size;
  }
  public int getPosx(){
    return posx; 
  }
  public int getPosy(){
    return posy; 
  }
  public void Right(){
    posx+=speed; 
  }
  public void Down(){
    posy+=speed; 
  }
  public void Up(){
    posy-=speed; 
  }
  public void Left(){
    posx-=speed; 
  }
}
