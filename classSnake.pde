class Snake {
  int Sx = 270;
  int Sy = 370;
  int tam = 20;
  Snake () {
    Sx = (int)random(0, 40);
    Sy = (int)random(0, 40);
  }

  void dibujarS () {
    fill(255);
    rect(Sx*tam, Sy*tam, tam, tam);
  }

  void mover () {
    teclas();
  }

  void teclas () {
    if (keyPressed == true) {
      if (keyCode == RIGHT) {
        Sx ++;
      } else { 
        if (keyCode == LEFT) {
          Sx --;
        } else { 
          if (keyCode == UP) {
            Sy --;
          } else { 
            if (keyCode == DOWN) {
              Sy ++;
            }
          }
        }
      }
    }
  }
}
