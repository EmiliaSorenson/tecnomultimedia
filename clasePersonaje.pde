class Personaje {
  int posX, posY;
  PImage [] gatito = new PImage [1];

  Personaje (int _posX, int _posY) {
    posX= _posX;
    posY= _posY;
    gatito [0] = loadImage ("gatito.png");
  }

  void mover () {
    teclas();
  }

  void dibujar () {
    image (gatito [0], posX, posY);
  }

  void teclas () {
    if (keyPressed == true) {
      if (keyCode == RIGHT) {
        posX ++;
      } else { 
        if (keyCode == LEFT) {
          posX --;
        } else { 
          if (keyCode == UP) {
            posY --;
          } else { 
            if (keyCode == DOWN) {
              posY ++;
            }
          }
        }
      }
    }
  }
}
