class Apple {
  int appleX;
  int appleY;
  int tam = 20;


  Apple () {
    appleX = (int)random(0, 40);
    appleY = (int)random(0, 40);
  }
  void dibujarA() {
    fill(255, 0, 0);
    rect(appleX*tam, appleY*tam, tam, tam);
  }
}
