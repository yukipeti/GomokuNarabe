void Ending(int player) {
  rectMode(CENTER);
  textAlign(CENTER);

  textSize(80);
  fill(255, 255, 255);
  rect(525, 525, 500, 350);
  fill(0);
  text("player " + player + " WIN", 525, 450);
  textSize(65);
  text("Push to F Exit",525,600);
}
