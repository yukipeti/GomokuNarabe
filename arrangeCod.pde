//マウスのクリックに対して盤面の真ん中になるように調節する関数

int ArrageCodX() {
  int x;
  x = mouseX / 70;
  x = x * 70 + 35;  //盤面の真ん中

  return x;
}

int ArrageCodY() {
  int y;
  y = mouseY / 70;
  y = y * 70 + 35;

  return y;
}
