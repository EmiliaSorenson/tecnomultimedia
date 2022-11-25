/*import ddf.minim.*;
Minim sonido;  
AudioPlayer player;*/

Snake snake;
Juego juego;
Apple apple;

void setup() {
 /* sonido = new Minim(this);
  player = sonido.loadFile("soundtrack.mp3");
  player.play();*/
  size (600, 600);
  juego = new Juego ();
  apple = new Apple();
  snake = new Snake();
}

void draw() {
  background (20);
  juego.dibujar();
  apple.dibujarA();
  snake.dibujarS();
  snake.mover();
}
