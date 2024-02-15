void Opening(Movie op, int pressed) {
  if (pressed == 0) {
    image(op, 0, 0);
  }
}
void keyPressed() {
  if (pressed == 0 && key == ' ') {
    pressed++;
    op.pause();
    WriteBoard();
  }
}

void movieEvent(Movie op) {
  if (pressed == 0) {
    op.read();
  }
}
