class Snake {
  int Sx;
  int Sy;
  int base;
  
  Snake () {
    Sx = (int)random(0, 20);
    Sy = (int)random(0, 20);
  }

  void dibujarS () {
    fill (255, 0, 0);
    rect (Sx * base, Sy * base, base, base);
  }
}
