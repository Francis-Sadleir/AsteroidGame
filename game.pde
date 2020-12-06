Spaceship myShip;
Asteroid myAsteroid;
Ufo myUfo;

ArrayList <GameObject> myObjects;
boolean wkey, akey, skey, dkey, spacekey;

void game() {
  background(0);
  myShip.show();
  myShip.act();
  myUfo.show();
  myUfo.act();
  
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
  }
}

void gameClicks() {
}
