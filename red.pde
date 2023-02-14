class Red {
  PImage Red;

  float posX, posY;

  Red() {
    Red = loadImage("Red.png");
  }


  void dibujarRed() {
    posX = mouseX;
    posY = height-90;
    imageMode(CENTER);
    image(Red, posX, posY, 80, 80);
  }
}
