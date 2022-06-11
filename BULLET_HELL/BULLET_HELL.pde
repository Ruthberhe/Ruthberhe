import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


ArrayList<GameObject> object;
PImage egg, bucket, spaceship, enemies,enemy2, explosion, screen, fire;

StarFighter player1;



int mode;
final int INTRO =0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;
final int OPTIONS = 4;


color  GB  =#D8DBE2;
color  LSB =#A9BCD0;
color  CB  =#58A4B0;
color  CH  =#373F51;
color  EB  =#1B1B1E;
color  W   =#FFFFFF;
color  R   =#FF0000;
color  B   =#000000;

PFont techno;
//String techno;

//keyboard variables
boolean left, right, up, down, space;

//gif variables
int t=0;
PImage[] gifl;
int nof;
int f;

//audio
Minim minim;
AudioPlayer games, pew;


void setup() {
  //font= loadFont("snap 48.vlw");
  //noice= loadFont("noice-48.vlw");
  PFont techno = createFont("techno_hideo.ttf", 100);
  textFont(techno);
  
  
  //textFont(font);
  rectMode(CENTER);
 
  fullScreen();


  object= new ArrayList<GameObject>();
  player1= new StarFighter();

  left=right=up=down=space=false;

  egg=loadImage("egg.png");
  bucket=loadImage("bucket.png");
  spaceship=loadImage("spaceship.png.png");
  enemies=loadImage("enemies.png");
  explosion=loadImage("explosion.png");
  screen=loadImage("screen.jpg");
 enemy2=loadImage("enemy2.png");
  fire=loadImage("fire.png.png");
  
  //audio
  minim=new Minim(this);
  games= minim.loadFile("games.mp3");
 pew= minim.loadFile("pew.mp3");
 
 
  
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==PAUSE) {
    pause();
  } else if (mode ==GAMEOVER) {
    gameover();
  } else if (mode== OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
