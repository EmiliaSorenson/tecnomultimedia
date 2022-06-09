//Nombre: Emilia Sörenson Comisión: 1
//Link del video: https://youtu.be/gcy8c2XSqOQ

float max_distance;
int Max=190;
void setup() {
  size(600, 600); 
  stroke(5);
}

void draw() {
  background(100, 0, 0);
  max_distance = dist(0, 0, width, height);
  float mx= map(mouseX, 0, width, 0, 255);
  for (int i = 0; i <= width; i += 50) {
    for (int j = 0; j <= height; j += 20) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * Max;
      fill(mx, 100, 130);
      ellipse(i, j, size, size);
    }
  }
}
void mousePressed() {
  Max = Max + 20;
}
void keyPressed() {
  Max = 190;
}
