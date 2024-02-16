void GameFinish(int[] judge) {
  int finish_1 = 0;
  int finish_2 = 0;
  for (int i = 0; i < 5; i++) {
    if (judge[i] == 1) {
      finish_1++;
    } else if (judge[i] == 2) {
      finish_2++;
    }
  }
  if (finish_1 == 1) {
    println("1player win");
    Ending(1);
  } else if (finish_2 == 5) {
    println("2player win");
    Ending(2);
  } else {
    finish_1 = 0;
    finish_2 = 0;
  }
}
