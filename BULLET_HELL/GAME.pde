void game(){
  games.play();
  
  
  addObjects();
  gameEngine();
  debug();
  fill(EB, 100);
  rect(width/2, height/2, width, height);
    int i=0;
  while(i<object.size()){
    GameObject s =object.get(i);
    s.act();
    s.show();
    if(s.lives==0){
      object.remove(i);
    }else{
    i++;
    }

  }
  player1.act();
  player1.show();
    
    //hit points
}

 void addObjects() {
    object.add(new Star());
    
    if(frameCount % 20==0) object.add(new Enemy());
    if(frameCount % 20==0) object.add(new Enemy2());
    
    
  }
  
  void gameEngine() {
    int i=0;
  while(i<object.size()){
    GameObject s =object.get(i);
    s.act();
    s.show();
    if(s.lives==0){
      object.remove(i);
    }else{
    i++;
    }
  }
  }
  
  void debug(){
    text(frameRate, 20, 20);
    text(object.size(), 10, 30);
  }
   
  
void gameClicks() {
  mode=PAUSE;
  
}
  
 
