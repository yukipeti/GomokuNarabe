void Ending(int playTurn) {
  int player = 0;
  
  player = playTurn;
  
  rectMode(CENTER);
  textAlign(CENTER);
  
  textSize(128);
  fill(255,255,255);
  rect(525,525,500,350);
  fill(0);
  text(player,525,525);
  
  println("waa"); 
}
