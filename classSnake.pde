class Serpiente {
  int[] dx = {1, 0, -1, 0};
  int[] dy = {0, 1, 0, -1};
  int[] dk = { RIGHT, DOWN, LEFT, UP };
  int x, y; 
  ArrayList<PVector> cola;
  int d; 
  boolean creciendo= false;
  Serpiente() {
    d = 0;
    cola = new ArrayList();
  }
  void dibujar() {
    fill(50, 200, 50);
    stroke(150, 200, 50);
    rect(x, y, 20, 20);
    for ( int i = 0; i < cola.size(); i++) {
      rect(cola.get(i).x, cola.get(i).y, 20, 20);
    }
  }
  void actualizar() {
    cola.add( new PVector(x, y, d) );
    if ( creciendo ) {
      creciendo= false;
    } else {
      cola.remove(0);
    }
    x += 20*dx[d];
    y += 20*dy[d];
    x += width;
    y += height;
    x %= width;
    y %= height;
  }
  void crecer() {
    creciendo = true;
  }
  void onKeyPressed() {
    for ( int i = 0; i < dk.length; i++) {
      if ( key == CODED && keyCode == dk[i] ) {
        d = i;
      }
    }
  }
}
