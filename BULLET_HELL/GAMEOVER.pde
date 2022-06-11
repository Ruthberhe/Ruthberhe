void gameover() {

 games.rewind();
 
  fill(CH, 5);
  rect(width/2, height/2, width, height);
  fill(LSB);
  textSize(100);
  text("GAMEOVER", 400, 300);
}

void gameoverClicks() {
  mode=INTRO;
  
}
