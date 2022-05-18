PImage    ace, luffy, zoro, ace2, barco, logo, onepiece, onepiece2, piratas;
int F, up, a;
PFont Pepito;
void setup() {
  size(700, 700);
  ace = loadImage("ace.png");
  luffy = loadImage("luffy.png");
  zoro =loadImage("Zoro.png");
  ace2 =loadImage("ace2.png");
  barco =loadImage("Barco.png");
  logo =loadImage("Logo.png");
  onepiece =loadImage("One Piece.jpg");
  onepiece2 =loadImage("One Piece2.png");
  piratas =loadImage("piratas.jpg");
  Pepito = loadFont("InkFree-48.vlw"); 
}
void draw() {
  F = frameCount;
  up--;
  a++;
  println(frameCount);
  if (F>0 && F <300) {
    image(onepiece2, 0, 0, width, height);
    image(logo, 0, 400+up, width, height);
  } else if (F>300 && F<500) {
    image(luffy, 0, 0, width, height);
    textFont(Pepito, 40);
    fill(255, 0, 0, a-280);
    text("Voice Actor\nMayumi Tanaka\n\nPersonaje\nMonkey D. Luffy", 150, 400);
  } else if (F>500 && F<700) {
    image(ace, 0, 0, width, height);
    textSize(40);
    fill(255, 0, 0, a-470);
    text("Voice actor \nToshio Furukawa\n\nPersonaje\nPortgas D. Ace", 50, 300);
  } else if (F>700 && F<900) {
    image(zoro, 0, 0, width, height);
    textSize(40);
    fill(255, 0, 0, a-670);
    text("Voice Actor          Personaje\nKazuya Nakai       Roronoa Zoro", 50, 100);
  } else if (F>900 && F<1100) {
    image(barco, 0, 0, width, height);
    textSize(40);
    fill(255, 255, 255, a-900);
    text("Director\nTakashi Otsuka\n\nGuionista\nEiichiro Oda\nAtsuhiro Tomioka", 50, 1150+up);
  } else if (F>1100 && F<1400) {
    image(onepiece, 0, 0, width, height);
    textSize(32);
    fill(255, 0, 0, a-1050);
    text("Banda sonora\n\nChinjuu-jima no Chopper-Ōkoku\nMabushikute por DASEIN\n\nNorowareta Seiken\nAno Basho e por Harebare\n\nOmatsuri Danshaku to Himitsu no Shima\nYume Miru Koro wo Sugitemo por Kishidan", 50, 1300+up);
  } else if (F>1400 && F<1420) {
    image(piratas, 0, 0, width, height);
    textSize(32);
    fill(random(150, 255), 0, 0);
    text("Haz click para ver lo mas lindo\n             del trabajo", 100, 150);
    text("Press R to Restart", 200, 500);
  }
}
void keyPressed() {
  if (key == 'r' || key == 'R');
  {
    frameCount=0;
    up=0;
    a=0;
  }
}
void mousePressed(){
    if (mousePressed);
  {
    image(ace2, 0, 0, width, height);
  }
}
