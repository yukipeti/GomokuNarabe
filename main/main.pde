PImage White;
PImage Black;
int playTurn  = 1;

void setup() {
  White = loadImage("../data/goStoneWhite.png"); //白の碁石
  Black = loadImage("../data/goStoneBlack.png"); //黒の碁石

  size(1050, 1050);
  WriteBoard(); //盤面の生成
  setImage(White, Black); //writeGoStoneに碁石の画像を取り込ませる
}

void draw() {
  game(playTurn);
  JudgeWin();
}

void mouseReleased() {
  playTurn++;
  loop();
}
