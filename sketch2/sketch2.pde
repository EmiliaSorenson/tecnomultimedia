int totalCircles = 7;
float circleSize = 300;
void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  for (int i = 0; i < totalCircles; i++) {
    float diameter = circleSize - i * (circleSize / totalCircles);
    float x = width / 2;
    float y = height / 2;
  // Coordenadas del centro de la elipse
  float centerX = width/2;
  float centerY = height/2;
  
  // Semiejes mayor y menor
  float semiMajorAxisX = map(mouseX, 0, width, 0, 200); // Utilizar el valor del mouseX para controlar el semieje mayor en X
  float semiMajorAxisY = 150;
  
  // Dibujar la elipse
  stroke(0);
  fill(175);
  ellipse(centerX, centerY, semiMajorAxisX, semiMajorAxisY);
  }
}
