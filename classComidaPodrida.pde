class ComidaPodrida {
  int x, y;
  int[] dx = {1, 0, -1, 0};
  int[] dy = {0, 1, 0, -1};
  int[] dk = { RIGHT, DOWN, LEFT, UP };
  ComidaPodrida() {
    nuevaPos();
  }
  void dibujar() {
    fill(0, 0, 255);
    stroke(200, 0, 200);
    ellipse(x+10, y+10, 20, 20);
  }
  boolean comidoP(int ox, int oy) {
    if ( x == ox && y == oy ) {
      nuevaPos();
      return true;
    }
    return false;
  }
  void nuevaPos() {
    x = 20 * int(random(width/20));
    y = 20 * int(random(height/20));
  }
}
