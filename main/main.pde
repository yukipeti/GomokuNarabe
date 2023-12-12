PImage White;
PImage Black;

void setup() {
  White = loadImage("../data/goStoneWhite.png");
  Black = loadImage("../data/goStoneBlack.png");
  size(1050,1050);
  WriteBoard(); //盤面の生成
  setImage(White,Black); //writeGoStoneに碁石の画像を取り込ませる
  WriteGoStoneWhite(105,105);
  WriteGoStoneBlack(175,175);
  
}

void draw(){
}
