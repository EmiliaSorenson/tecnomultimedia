class Objetos {

  PImage jellyfish, boot;
  float posX, posY, tamx, tamy;

  boolean mov;


  Objetos() {
    imageMode(CENTER);
    jellyfish = loadImage("jellyfish.png");
    boot = loadImage("boot.png");
    posY = random(-height*5, -30);
    posX = random(20, width-20);
    mov = true;
  }

  void dibujarjelly() {
    image(jellyfish, posX, posY, 70, 70);
    if (mov == true) posY+=4;
  }

  void dibujarboot() {
    image(boot, posX, posY, 50, 50);
    if (mov == true) posY+=4;
  }

  void reset() {
    posY = random(-height*5, -30);
    posX = random(20, width-20);
    mov = true;
  }
}
