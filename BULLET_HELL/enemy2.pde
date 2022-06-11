class Enemy2 extends GameObject{
 // float r, vx, vy, x, y;
  float a;
  float cooldown , threshold;
   
  Enemy2() {
    super(random(width), -20, 5, 5, 40, 1, 0, CH);
    cooldown=3;
    threshold=20;
    
    
    }
  
  
  void show() {
    scurve();
    image(enemy2, x, y);
  }
  
  void act(){
    super.act();
    scurve();
    
    
      int i=0;
  while(i<object.size()){
    GameObject obj =object.get(i);
    if (obj instanceof Bullet){
      if(collidingWith(obj)){
      lives--;
      image(explosion, x, y);
      obj.lives=0;
    }
  }
  i++;
  }
  if(offScreen())lives =0;
  //a+=vx;
 // a+=vy;
  }
  
  


void scurve() {
  x=sin(a)* width/2 + width/2;
  a+=PI/90;
  cooldown++;
  if (cooldown>=threshold){
  object.add(new EnemyBullet(x, y, 0, 10));
  }
  cooldown=0;
  
}
}
