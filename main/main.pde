int playTurn  = 1;

void setup() {
  size(1050, 1050);
  WriteBoard(); //盤面の生成
  initArray();  //盤面の調査用の配列の初期化
}

void draw() {
  game(playTurn);
  JudgeWin();
}

void mouseReleased() {
  playTurn++;
  loop();
}
