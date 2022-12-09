class Principal {
  Serpiente serpiente;
  Comida comida;
  Tiempo tiempo;
  ComidaPodrida comidaP;
  boolean ganador;
  boolean perder = false;
  boolean intro = true;
  int puntos;
  int puntajeMax;
  Principal() {
    puntos = 0;
    puntajeMax = 5;
    serpiente = new Serpiente();
    comida = new Comida();
    tiempo = new Tiempo();
    comidaP = new ComidaPodrida();
  }
  void Juego() {
    Teclas();
    if ( tiempo.alarma() ) {
      serpiente.actualizar();
      if ( comida.comido( serpiente.x, serpiente.y ) ) {
        serpiente.crecer();
        puntos++;
      }
      if (comidaP.comidoP( serpiente.x, serpiente.y)) {
        perder = true;
      }
    }
    Perder();
    validarGanador();
    verPuntos();
  }
  void Dibujo() {
    comidaP.dibujar();
    comida.dibujar();
    serpiente.dibujar();
  }
  void Teclas() {
    if (keyPressed) {
      serpiente.onKeyPressed();
    }
  }
  void IntroJuego() {
    if (intro == true) {
      textSize(60);
      fill(0, 252, 48);
      text("SNAKE", 155, height/2);
      textSize(20);
      text("Click para jugar", 355, height/2);
    } else if (intro == false) {
      Dibujo();
      Juego();
    }
  }
  void Intro() {
    if (mousePressed == true) {
      intro = false;
    }
  }
  void validarGanador() {
    if (puntos == puntajeMax) {
      background(0);
      text("HAS GANADO!!!", 180, height/2);
      text("Presione cualquier tecla para volver a jugar", 45, height/2 + 30);
      text("*Hecho por Emilia Sorenson*", 140, height/2 + 130);
      ganador = true;
    } 
    if (keyPressed && ganador == true) {
      setup();
      intro = true;
    } else if (keyPressed && perder == true) {
      setup();
      intro = true;
    }
  }
  void verPuntos() {
    textSize(25);
    fill(0, 252, 48);
    text(puntos, width/2 - 60, 40);
  }
  void Perder() {
    if (perder == true) {
      background(0);
      textSize(25);
      fill(255);
      text("HAS PERDIDO", height/2, 180);
      text("Presione cualquier tecla para volver a jugar", 25, height/2 + 30);
      text("*Hecho por Emilia Sorenson*", 140, height/2 + 130);
    }
  }
}
