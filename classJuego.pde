class Juego {
  int filas = 40;
  int columnas = 40;
  int base = 20;
  int dir = 1;
  int i=0;
  int j=0;
  int tam;
  int puntaje;
  int [] Sx = {0, 0, -1, 1};
  int [] Sy = {-1, 1, 0, 0};
  int appleX;
  int appleY; 
 String estados;



  Juego () {
   
    appleX = (int)random(0, 40);
    appleY = (int)random(0, 40);
    estados = "inicio";
  }
  void dibujar() {
    background(20);
      textSize(30);
      text("Puntaje:", 30, 50);
      text(puntaje, 150, 50);
    for (int i = 0; i < filas; i ++) {
      line (0, i*base, width, i*base);
    }
    for (int j = 0; j < columnas; j ++) {
      line (j*base, 0, j*base, height);
    }
}
}
