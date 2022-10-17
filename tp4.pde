import ddf.minim.*;

Minim sonido;
AudioPlayer player;
Fondo lofi;


void setup () {
  size (500, 500);
  lofi = new Fondo ();
  sonido = new Minim(this);
  player = sonido.loadFile("lofi.mp3");
  player.play();
}

void draw() {
  background (200);
  lofi.dibujar();
}
