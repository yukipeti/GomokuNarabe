void WriteBoard() {
  int sizeX = width;
  int sizeY = height;
  int board = 70;
  ellipseMode(CENTER);
  background(255, 230, 151);
  //noStroke(); // 線無し<-とりまいらん
  while (board < sizeX) {
    strokeWeight(1.5);
    line(board, 0, board, sizeY);
    line(0, board, sizeX, board);
    board += 70;
  }
}
/*
盤面のサイズは連珠国際連盟にのっとり15路に設定する
 */
