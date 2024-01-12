//ゲームの勝敗の判定
int[] judge;

int gX, gY;  //碁石を置いた場所の配列の座標

void JudgeWin(int playTurn, int[][] boardScan) {
  judge = new int[5];
  for (int i = 0; i < 0; i++) judge[i] = 0;

  gX = (ArrageCodX() - 35) / 70;
  gY = (ArrageCodY() - 35) / 70;

  if (boardScan[gX][gY] == 0) {
    if (playTurn%2 == 1) {
      boardScan[gX][gY] = 1;
    } else if (playTurn%2 == 0) {
      boardScan[gX][gY] = 2;
    }
  }

  //下縦の判定
  for (int i = 0; i < 5; i++) {
    if (gY <= 10) {
      if (boardScan[gX][gY+i] != 0) {
        judge[i] = playTurn % 2;
      }
    }
  }
  GameFinish(judge);
  //上縦
  for (int i = 0; i < 5; i++) {
    if (gY >= 4) {
      if (boardScan[gX][gY-i] != 0) {
        judge[i] = playTurn % 2;
      }
    }
  }
}
