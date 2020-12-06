/*class AsteroidFire extends GameObject {
 PVector direction;
 int alpha; //transparency
 
 AsteroidFire() {
 location = new PVector(myAsteroid.location.x, myAsteroid.location.y);
 velocity = myAsteroid.velocity.copy();
 velocity.rotate (radians(180) + random(360));
 velocity.setMag(5);
 size = random(2, 7);
 hp = 1;
 alpha = 255;
 }
 
 void show() {
 
 strokeWeight(2);
 stroke(255, alpha);
 fill(0, alpha);
 alpha = alpha - 25;
 if (alpha <= 0) hp = 0;
 ellipse(location.x, location.y, size, size);
 }
 }
 */
