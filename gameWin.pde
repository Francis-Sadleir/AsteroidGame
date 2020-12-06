void gamewin() {
  background(0);
  button(400, 500, 260, 100, "YOU WIN!!");
}


void gamewinClicks() {
  if (buttonPressed(400, 500, 260, 100)) {
    mode = INTRO;
  }
}
