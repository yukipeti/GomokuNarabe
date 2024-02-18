import processing.video.*; //<>//

Movie op;

int[][] boardScan;

int playTurn  = 0;
int x = 0, y = 0;

void setup() {
  size(1050, 1050);

  op = new Movie(this, "gomokunarabe_op.mp4");

  op.loop();

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
  Opening(op, pressed);
  game(playTurn, boardScan);
}

void movieEvent(Movie op) {
  if (pressed == 0) {
    op.read();
  }
}
