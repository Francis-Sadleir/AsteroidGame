Spaceship myShip;
Asteroid myAsteroid;
Ufo myUfo;

ArrayList <GameObject> myObjects;
boolean wkey, akey, skey, dkey, spacekey;

void game() {
  background(0);

  if (myUfo.hp > 0) {
    myShip.show();
    myShip.act();
  } else {
    mode = GAMEOVER;
  }
  if (myUfo.hp > 0) {
    myUfo.show();
    myUfo.act();
  }

  int numAsteroids = 0;
  int i = 0;
  while ( i < myObjects.size()  ) {

    GameObject obj= myObjects.get(i);
    if (obj.hp > 0) {
      obj.act();
      obj.show();
      i++;
    } else {
      myObjects.remove(i);
    }

    if (obj instanceof Asteroid) {
      numAsteroids ++;
    }
  }
  if (numAsteroids == 0 && myUfo.hp == 0) {
    mode = GAMEWIN;
  }



  textSize(30);
  fill(255);
  text("LIVES: " + myShip.hp, 730, 25);

  fill(255);
  strokeWeight(0);
  stroke(0);
  ellipse(24, 24, 44, 44);
  pauseButton.resize(44, 44); 
  image(pauseButton, 2, 2);
}


void gameClicks() {
  if (dist(mouseX, mouseY, 24, 24) < 22) {
    mode = PAUSE;
  }
}
