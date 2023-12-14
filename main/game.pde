void game(int playTurn) {
  int x = ArrageCodX(mouseX);  //X座標
  int y = ArrageCodY(mouseY);  //Y座標
  println(x);
  println(y);

  if (playTurn%2 == 1) { //先手(黒)
    if (mousePressed == true) {
      WriteGoStoneBlack(x, y);
    }
  } else if (playTurn%2 == 0) { //後手(白)
    if (mousePressed == true) {
      WriteGoStoneWhite(x, y);
    }
  }
}
