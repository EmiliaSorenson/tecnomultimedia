import processing.sound.*;
SoundFile music; 

Principal p;
void setup() {
  size(600, 400);
  music = new SoundFile(this, "Snake.mp3");
  music.play();
  p = new Principal();
}

void draw() {
  background(0);
  p.Intro();
  p.IntroJuego();
  //p.Dibujo();
  //p.Juego();
}
