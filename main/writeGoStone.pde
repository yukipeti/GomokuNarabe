//引数の座標にそれぞれの碁石を出力させる

PImage goStoneWhite;
PImage goStoneBlack;

void WriteGoStoneWhite(int boardX, int boardY) {
  goStoneWhite = loadImage("../data/goStoneWhite.png");
  imageMode(CENTER);
  goStoneWhite.resize(60, 60);

  image(goStoneWhite, boardX, boardY);
}

void WriteGoStoneBlack(int boardX, int boardY) {
  goStoneBlack = loadImage("../data/goStoneBlack.png");
  imageMode(CENTER);
  goStoneBlack.resize(60, 60);

  image(goStoneBlack, boardX, boardY);
}
