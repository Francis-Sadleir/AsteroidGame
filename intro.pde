void intro() {
  background(0);
  button(400, 400, 200, 100, "START");

  textSize(60);
  text("ASTEROIDS", 400, 100);
}

void introClicks() {
  if (buttonPressed(400,400,200,100)) {
    mode = GAME;
  }
}
