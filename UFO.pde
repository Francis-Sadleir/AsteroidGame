class Ufo extends GameObject {

  PVector direction;
  int shotTimer, threshold;
  int healthTimer, healthThreshold;
  Ufo () {

    location = new PVector(random(200, 600), -400);
    velocity = new PVector (0, 1);
    //direction = new PVector (myShip.location.x - myUfo.location.x, myShip.location.y - myUfo.location.y);
    hp = 3;
    shotTimer = 0;
    threshold = 15;
    healthTimer = 180;
    healthThreshold = 180;
  }


  void show() {
    pushMatrix();
    strokeWeight(15);
    stroke(230, 20, 20);
    if (healthTimer > healthThreshold) {
      fill (0);
    } else {
      fill(230, 20, 20);
    }
    ellipse (location.x, location.y, 50, 50);
    popMatrix();
  }
  void act() {
    super.act();

    direction = new PVector (myShip.location.x - myUfo.location.x, myShip.location.y - myUfo.location.y);
    healthTimer++;
    shotTimer++;
    if (shotTimer >= threshold) {
      myObjects.add(new UfoBullet());
      shotTimer = 0;
    }

    if (location.y > 850) {
      location.y = -600;
    }

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        if ( dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size && healthTimer >= healthThreshold) {
          hp = hp - 1;
          healthTimer = 0;
        }
      }
      i++;
    }
  }
}
