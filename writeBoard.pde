//盤面の出力

void WriteBoard() {
  int sizeX = width;
  int sizeY = height;
  int line = 35;
  ellipseMode(CENTER);
  background(255, 230, 151);
  //noStroke(); // 線無し<-とりまいらん
  while (line <= 1015 && line >= 35) {
    strokeWeight(1.5);
    line(line, 35, line, sizeY-35);
    line(35, line, sizeX-35, line);
    line += 70;
  }
}
