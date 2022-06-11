 void intro() {
   games.play();
  image(screen, -20, -20);
  textSize(100);
  fill(W);
  text("NOICE", 100, 200);
  
  //options menu
  tactile(width-100, 50, 150, 50);
    rect(width-100, 50, 150, 50);
    fill(B);
    textSize(30);
    text("options", width-170, 50);
    
    
  
  
  
}

void introClicks() {
 mode=GAME;
 
}

void tactile(){
  
}
