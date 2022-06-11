class StarFighter extends GameObject{
  int cooldown, threshold;
  
  
 StarFighter(){
    super(width/2, height/2, 0, 0, 40, 3, 0, W);
    threshold=10;
    cooldown=3;
     
   
  }
  
  void act(){
    
     //manage fire
   cooldown++;
    if (space && cooldown >= threshold) {
      object.add(new Bullet());
      
      cooldown=0;
    
    }
    //controll star 
    if(left)  vx=-7;
    if(right) vx= 7;
    if(up)    vy=-7;
    if(down)  vy= 7;
    if(!up && ! down) vy=vy*0.9;
    if(!left && ! right) vx=vx*0.9;
    
    x+=vx;
    y+=vy;
     
     //restrict
    if (x>width-10) x=width-10;
    if(x<1) x=1;
    if (y>height-20) y=height-20;
    if(y<1) y=1;
    
  //collision
  int i=0;
     while(i<object.size()){
    GameObject obj =object.get(i);
    if (obj instanceof EnemyBullet){
      if(collidingWith(obj)){
        image(explosion, x, y);
      lives--;
      hp++;
      obj.lives=0;
     mode=GAMEOVER;
  }
  }
     i++;
  }
    
  

  }
  
  void show(){
    fill(#FF0000);
image(spaceship, x, y);
textSize(30);
   fill(LSB);
    text("score:"+hp, 10, 50);
   text("lives:"+lives, width-200, 50);
    
    
  }
  
}
