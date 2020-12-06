int mode;

final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;



void setup() {
  size (800, 800);
  background(0);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = GAME;

  wkey = akey = skey = dkey = false;
  myShip = new Spaceship();
  myUfo = new Ufo();
  myObjects = new ArrayList <GameObject>();

  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println ("ERROR! Mode is " + mode);
  }
}
