//ゲームの勝敗の判定

int gX, gY;  //碁石を置いた場所の配列の座標

void JudgeWin(int playTurn, int[][] boardScan) {
  if (mousePressed == true) {
    gX = (ArrageCodX() - 35) / 70;
    gY = (ArrageCodY() - 35) / 70;

    if (boardScan[gX][gY] == 0) {
      if (playTurn%2 == 1) {
        boardScan[gX][gY] = 1;
      } else if (playTurn%2 == 0) {
        boardScan[gX][gY] = 2;
      }
    }
    //println(boardScan[gX][gY]);
  }
}
