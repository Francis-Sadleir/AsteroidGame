void gameover() {
  background(0);
  button(400, 500, 260, 100, "YOU LOSE");
}


void gameoverClicks() {
  if (buttonPressed(400, 500, 260, 100)) {
    mode = INTRO;
  }
}
