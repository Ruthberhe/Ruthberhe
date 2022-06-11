class Bullet extends GameObject{
  
  Bullet(){ 
    super(player1.x, player1.y, 0, -10, 5, 1, 0, W);
    
   
  }
  
  void act() {
    super.act();
    if(offScreen()) lives=0;
    
    
  }
  
  void show() {
    image(fire, x, y);
    
  }

  
 
 
}
