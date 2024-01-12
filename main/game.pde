//ゲームの進行を行う

void game(int playTurn, int[][] boardScan) {
  int x = ArrageCodX();  //X座標
  int y = ArrageCodY();  //Y座標

  //碁石を置いた場所の配列の座標
  int gX = (x - 35) / 70;
  int gY = (y - 35) / 70;

  if (boardScan[gX][gY] == 0) {
    if (playTurn%2 == 0) { //先手(黒)
      if (mousePressed == true) {
        WriteGoStoneBlack(x, y);
        
        noLoop();  //長押し対策
      }
    } else if (playTurn%2 == 1) { //後手(白)
      if (mousePressed == true) {
        WriteGoStoneWhite(x, y);
        
        noLoop();
      }
    }
    
    
  }
  
}
