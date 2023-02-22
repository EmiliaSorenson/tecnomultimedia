import processing.sound.*;
SoundFile music;
Juego juego;
void setup() {
  size(600, 400);
  juego = new Juego();
  music = new SoundFile(this, "SpongeBob.mp3");
  music.play();
}
void draw() {
  juego.dibujar();
}
void mouseClicked() {
  juego.click();
}
