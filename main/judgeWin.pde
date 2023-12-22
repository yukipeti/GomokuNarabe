//ゲームの勝敗の判定
int[] judge;

int gX, gY;  //碁石を置いた場所の配列の座標

void JudgeWin(int playTurn, int[][] boardScan) {
  judge = new int[4];
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
}
