class Notas {
  int posX, posY;
  float velocidad;
  int direccion;
  float radio;
  PImage [] notas = new PImage [1];

  Notas (int _posX, int _posY) {
    posX= _posX;
    posY= _posY;
    velocidad = 2.0;
    direccion = 1;
    radio = 52.0;
    notas [0] = loadImage ("notas.png");
  }

  void mover () {
    posX += velocidad * direccion;
    if ((posX > 500 - radio) || (posX < 0 - radio)) {
      direccion = -direccion;
    }
  }

  void dibujar () {
    image (nota0 [0], posX, posY);
  }
}
