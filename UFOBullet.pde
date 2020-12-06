class UfoBullet extends GameObject {

  int timer;

  UfoBullet() {
    location = new PVector (myUfo.location.x, myUfo.location.y);
    velocity = new PVector (myUfo.direction.x, myUfo.direction.y);
    velocity.setMag(5);
    timer = 100;
    size = 10;
    hp = 1;
  }

  void show() {
    strokeWeight(2);
    stroke(255);
    fill(0);
    ellipse(location.x, location.y, size, size);
  }
  void act() {
    super.act();


    if (location.x < 2.5) {
      hp = 0;
    }
    if (location.y < -2.5) {
      hp = 0;
    }
    if (location.x > 802.5) {
      hp = 0;
    }
    if (location.y > 802.5) {
      hp = 0;
    }
  }
}
