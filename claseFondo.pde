class Fondo {
  Notas notas;
  Personaje gatito;
  PImage img;
  int posX, posY;

  Fondo () {
    img = loadImage ("lofi.jpg");
    notas = new Notas (width/2, 339);
    gatito = new Personaje (width/2, 200);
  }

  void dibujar () {
    image (img, 0, 0, width, height);
    notas.dibujar();
    notas.mover ();
    gatito.dibujar();
    gatito.mover ();
  }
}
