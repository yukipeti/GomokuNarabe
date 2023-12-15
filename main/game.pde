//ゲームの進行を行う

void game(int playTurn) {
  int x = ArrageCodX();  //X座標
  int y = ArrageCodY();  //Y座標

  if (playTurn%2 == 1) { //先手(黒)
    if (mousePressed == true) {
      WriteGoStoneBlack(x, y);
      noLoop();  //長押し対策
    }
  } else if (playTurn%2 == 0) { //後手(白)
    if (mousePressed == true) {
      WriteGoStoneWhite(x, y);
      noLoop();
    }
  }
}
