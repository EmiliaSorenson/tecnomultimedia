

Snake snake;
Juego juego;
Apple apple;

void setup() {
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
}
