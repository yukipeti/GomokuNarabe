//ゲームの勝敗の判定

int[][] boardScan;

//盤面の調査のための配列を初期化(set()で初期化を行う)
void initArray() {
  boardScan = new int[15][15];
  for (int i =0; i < 15; i++) {
    for (int j = 0; j < 15; j++) {
      boardScan[i][j] = 0;
    }
  }
}

int mX, mY;  //碁石を置いた時のマウスの座標

void JudgeWin() {
  if (mousePressed == true) {
    mX = ArrageCodX();
    mY = ArrageCodY();
  }
}
