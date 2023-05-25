int totalCircles = 7;
PImage fondo;
float circleSize = 300;

void setup() {
  size(400, 400);
  fondo = loadImage("fondo.jpg");
  image(fondo, 0, 0);
}

void draw() {
  //background(80, 125, 130);

  for (int i = 0; i < totalCircles; i++) {
    float diameter = circleSize - i * (circleSize / totalCircles);
    float x = width / 2;
    float y = height / 2;

    // distancia entre el ratón y el centro del círculo
    float distance = dist(mouseX, mouseY, x, y);

    // cambiar el tamaño del círculo
    float mappedSize = map(distance, 0, circleSize, circleSize, diameter);
   

    // centro de la pantalla
    ellipse(x, y, mappedSize, mappedSize);
  }
}
