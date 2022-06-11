class Enemy extends GameObject {
 int cooldown, threshold;

  Enemy(){
    super(random(width), -50, 0, 5, 30,1, 0, GB);
   threshold=50;
   cooldown=3;
     }
  
  void show() {
   
  image(enemies, x, y);
   
  
  }
  
  void act() {
     super.act();
     cooldown++;
   if(cooldown>=threshold){
     object.add(new EnemyBullet(x, y, 0, 10));
     object.add(new EnemyBullet(x+80, y, 0, 10));
     cooldown=0;
   }
     
     
     
     
  int i=0;
  while(i<object.size()){
    GameObject obj =object.get(i);
    if (obj instanceof Bullet){
      if(collidingWith(obj)){
      lives--;
      //hp=hp+100;
      image(explosion, x, y);
      
      obj.lives=0;
    }
  }
  i++;
  }
 
  //remove off screen
  if(offScreen())lives =0;
}
}
