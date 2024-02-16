int pressed = 0;
boolean allowGameExit = false;

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
  if (finish_1 == 5) {
    println("1player win");
    Ending(1);
    allowGameExit = true;
  } else if (finish_2 == 5) {
    println("2player win");
    Ending(2);
    allowGameExit = true;
  } else {
    finish_1 = 0;
    finish_2 = 0;
  }
}

void keyPressed() {
  if (pressed == 0 && key == ' ') {
    pressed++;
    op.pause();
    WriteBoard();
  }
  if (allowGameExit == true && key == 'f') {
    exit();
  }
  if(key == 'b'){
     op.pause();
     WriteBoard();
  }//バグ用
}
