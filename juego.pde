class Juego { 
  PImage gana, pierde, fondo; 
  Red Red;
  Objetos [] Jelly;
  Objetos [] boot;
  Botones jugar, creditos, instrucciones, jugarDeNuevo, inicio, volver; 
  String pantalla;
  int points, fails, ObjetoFuera;

  Juego() {
    gana = loadImage("gana.jpeg");
    pierde = loadImage("pierde.jpeg");
    fondo = loadImage("fondo.jpeg");
    fondo.resize(width, height);
    pantalla = "inicio";
    Red = new Red();
    jugar = new Botones("JUGAR");
    creditos = new Botones("CREDITOS");
    instrucciones = new Botones("INSTRUCCIONES");
    jugarDeNuevo = new Botones("JUGAR DE NUEVO");
    inicio = new Botones("INICIO");
    volver = new Botones("ATRAS");
    ObjetoFuera = 0;
    Jelly = new Objetos [20];
    boot = new Objetos [15];
    for (int i=0; i < Jelly.length; i++) {
      Jelly [i]= new Objetos();
    }
    for (int i=0; i < boot.length; i++) {
      boot [i]= new Objetos();
    }
  }
  void dibujar() {
    imageMode(CENTER);
    image (fondo, width/2, height/2);
    if (pantalla.equals("inicio")) {
      pushStyle();
      fill(0);
      textSize(60);
      textAlign(CENTER);
      text ("JELLY\n CATCH", width/2, height/3-50);
      fill(180, 220, 40);
      text("JELLY\n CATCH", width/2+3, height/3-53);
      popStyle();
      jugar.dibujarboton();
      creditos.dibujarboton();
      instrucciones.dibujarboton();
    }
    if (pantalla.equals("creditos")) {
      volver.dibujarboton();
      pushStyle();
      fill(0);
      textSize(30);
      text ("CREDITOS", 300, 90);
      fill(100, 200, 230);
      stroke(230, 200, 100);
      strokeWeight(15);
      rect(300, 250, 700-300, 200);
      textSize (25);
      fill(255);
      text("Creator Nick Sorenson", 300, 200);
      popStyle();
    }
    if (pantalla.equals("instrucciones")) {
      volver.dibujarboton();
      pushStyle();
      fill(0);
      textSize(30);
      text ("INSTRUCCIONES", 300, 90);
      fill(100, 200, 230);
      stroke(230, 200, 100);
      strokeWeight(15);
      rect(300, 250, 700-300, 200);
      textSize (25);
      fill(255);
      text("Atrapa 10 Jellys", 300, 200);
      text("¡Evita las botas!", 300, 250);
      popStyle();
    }
    if (pantalla.equals("gana")) {
      dibujarGana();
    }

    if (pantalla.equals("pierde")) {
      dibujarPierde();
    }
    if (pantalla.equals("juego")) {
      Red.dibujarRed();
      for (int i=0; i < Jelly.length; i++) {
        Jelly [i].dibujarjelly();
        if (Jelly[i]. posY>height+50 && Jelly[i]. mov==true) {
          ObjetoFuera ++;
          Jelly [i]. mov = false;
        }
        //colision entre red, jelly y boot//
        if (dist(Red.posX+25, Red.posY+15, Jelly[i].posX, Jelly[i].posY)<80 && Jelly[i].mov==true) {
          points +=1;
          Jelly [i].mov = false;
          ObjetoFuera++;
          Jelly [i].posY = height*2;
        }
      }
      for (int i=0; i < boot.length; i++) {
        boot [i].dibujarboot();
        if (boot[i]. posY>height+50 && boot[i]. mov==true) {
          ObjetoFuera ++;
          boot [i]. mov = false;
        }
        if (dist(Red.posX+25, Red.posY+15, boot[i].posX, boot[i].posY)<80 && boot[i].mov==true) {
          fails +=1;
          boot [i].mov = false;
          ObjetoFuera++;
          boot [i].posY = height*2;
        }
      }
      text("Ya juntaste" +points+ "de 10 Jellys", width/2, 20);
    }

    if (points>=10) {
      pantalla = "gana";
    }
    if (fails>=5||ObjetoFuera>=Jelly. length+boot.length) {
      pantalla = "pierde";
    }
  }
  void dibujarGana() {
    image(gana, width/2, height/2, 600, 400);
    jugarDeNuevo.dibujarboton();
    inicio.dibujarboton();
    fails=0;
    points=0;
    for (int i=0; i<Jelly.length; i++) {
      Jelly[i].reset();
    }
    for (int i=0; i<boot.length; i++) {
      boot[i].reset();
    }
    ObjetoFuera=0;
  }
  void dibujarPierde() {
    image(pierde, width/2, height/2, 600, 400);
    jugarDeNuevo.dibujarboton();
    inicio.dibujarboton();
    fails=0;
    points=0;
    for (int i=0; i<Jelly.length; i++) {
      Jelly[i].reset();
    }
    for (int i=0; i<boot.length; i++) {
      boot[i].reset();
    }
    ObjetoFuera=0;
  }
  void click() {
    jugar.click();
    inicio.click();
    instrucciones.click();
    creditos.click();
    volver.click();
    jugarDeNuevo.click();
  }
}
