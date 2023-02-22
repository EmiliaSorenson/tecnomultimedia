class Botones {
  String btexto, bpantalla;
  float posX, posY, tamX, tamY;
  int bcolor;

  Botones(String b) {
    bcolor = (255);
    textAlign (CENTER);
    textSize (20);
    rectMode (CENTER);

    if (b.equals("JUGAR")) {
      bcolor = (150);
      btexto = b;
      posX= width/2;
      posY= height/2+40;
      tamX= 100;
      tamY= 50;
      bpantalla = "juego";
    }

    if (b.equals("CREDITOS")) {
      bcolor = (180);
      btexto = b;
      posX= width/2;
      posY= height/2+160;
      tamX= 100;
      tamY= 50;
      bpantalla = "creditos";
    }
    if (b.equals("INSTRUCCIONES")) {
      bcolor = (120);
      btexto = b;
      posX= width/2;
      posY= height/2+100;
      tamX= 100;
      tamY= 50;
      bpantalla = "instrucciones";
    }
    if (b.equals("JUGAR DE NUEVO")) {
      bcolor = (200);
      btexto = b;
      posX= width/2;
      posY= height/2+250;
      tamX= 100;
      tamY= 50;
      bpantalla = "juego";
    }
    if (b.equals("INICIO")) {
      bcolor = (130);
      btexto = b;
      posX= width/2;
      posY= height/2+170;
      tamX= 100;
      tamY= 50;
      bpantalla = "inicio";
    }
    if (b.equals("ATRAS")) {
      bcolor = (150);
      btexto = b;
      posX= 100;
      posY= 100;
      tamX= 100;
      tamY= 50;
      bpantalla = "inicio";
    }
  }
  void dibujarboton() {
    fill (bcolor);
    rect (posX, posY, tamX, tamY, 10);
    textAlign (CENTER);
    fill (255);
    text (btexto, posX, posY);
  }

  void click() {
    if (mouseX > posX-tamX/2 && mouseX<posX+tamX/2 && mouseY>posY-tamY/2 && mouseY<posY+tamY/2) {
      println(bpantalla);
      juego.pantalla = bpantalla;
    }
  }
 
}
