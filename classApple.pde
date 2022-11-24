class Apple {
  int appleX;
  int appleY;
  int base;


  Apple () {
    appleX = (int)random(0, 40);
    appleY = (int)random(0, 40);
  }
  void dibujarA() {
    fill(255);
    rect (appleX * base, appleY * base, base, base);
  }
}
