class Ufo extends GameObject {

  PVector direction;
  int shotTimer, threshold;

  Ufo () {

    location = new PVector(random(200, 600), -400);
    velocity = new PVector (0, 1);
    //direction = new PVector (myShip.location.x - myUfo.location.x, myShip.location.y - myUfo.location.y);
    hp = 2;
    shotTimer = 0;
    threshold = 10;
  }


  void show() {
    pushMatrix();
    strokeWeight(15);
    stroke(255, 0, 0);
    fill(0);
    ellipse (location.x, location.y, 50, 50);

    popMatrix();
  }
  void act() {
    super.act();

    direction = new PVector (myShip.location.x - myUfo.location.x, myShip.location.y - myUfo.location.y);

    shotTimer++;
    if (shotTimer >= threshold) {
      myObjects.add(new UfoBullet());
      shotTimer = 0;
    }

    if (location.y > 850) {
      location.y = -600;
    }
  }
}
