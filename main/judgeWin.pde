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

      judge[i] = boardScan[gX][gY+i];
    }
  }
  GameFinish(judge);
  //上縦
  for (int i = 0; i < 5; i++) {
    if (gY >= 4) {

      judge[i] = boardScan[gX][gY-i];
    }
  }
  GameFinish(judge);
  //右横
  for (int i = 0; i < 5; i++) {
    if (gX <= 10) {

      judge[i] = boardScan[gX+i][gY];
      //println(playTurn);
    }
  }
  GameFinish(judge);
  //左横
  for (int i = 0; i < 5; i++) {
    if (gX >= 4) {

      judge[i] = boardScan[gX-i][gY];
    }
  }
  GameFinish(judge);
  //右上斜め
  for (int i = 0; i < 5; i++) {
    if (gX <= 10 && gY >= 4) {
      judge[i] = boardScan[gX+i][gY-i];
    }
  }
  GameFinish(judge);
  //左上斜め
  for (int i = 0; i < 5; i++) {
    if (gX >=4 && gY >=4) {
      judge[i] = boardScan[gX-i][gY-i];
    }
  }
  GameFinish(judge);
  //右下斜め
  for (int i = 0; i < 5; i++) {
    if (gX <= 10 && gY <= 10) {
      judge[i] = boardScan[gX+i][gY+i];
    }
  }
  GameFinish(judge);
  //左下斜め
  for (int i = 0; i < 5; i++) {
    if (gX >= 4 && gY <= 10) {
      judge[i] = boardScan[gX-i][gY+i];
    }
  }
  GameFinish(judge);
}
