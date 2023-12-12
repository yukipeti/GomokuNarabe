PImage goStoneWhite;
PImage goStoneBlack;

void setImage(PImage white, PImage black) {
  goStoneWhite = white;
  goStoneBlack = black;
}

void WriteGoStoneWhite(int boardX, int boardY) {
  imageMode(CENTER);
  goStoneWhite.resize(60, 60);

  image(goStoneWhite, boardX, boardY);
}

void WriteGoStoneBlack(int boardX, int boardY) {
  imageMode(CENTER);
  goStoneBlack.resize(60, 60);

  image(goStoneBlack, boardX, boardY);
}
