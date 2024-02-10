import processing.video.*; //<>//

Movie op;

int[][] boardScan;
int pressed = 0;
int playTurn  = 0;
int x = 0, y = 0;

void setup() {
  size(1050, 1050);
  frameRate(24);

  op = new Movie(this, "gomokunarabe_op.mp4");

  op.loop();
  //WriteBoard();

  boardScan = new int[15][15];
  //盤面の調査用の配列の初期化
  for (int i =0; i < 15; i++) {
    for (int j = 0; j < 15; j++) {
      boardScan[i][j] = 0;
    }
  }
  image(op, 0, 0);
}

void draw() {


  image(op, 0, 0);
  game(playTurn, boardScan);
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
/*めも
 drawにはop関連のみでgame関数はwhileで特定の条件下で実行する形にすればきれいに行くはず
 実装がきもい？知らねぇよ
 */
