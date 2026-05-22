//Hacer 5 circulos separados horizontal y verticalmente
float[] yc = new float[5];

void setup() {
  size(800, 600);

  for (int i = 0; i < 5; i++) {
    yc[i] = i * 100;
  }
}

void draw() {
  background(127);

  for (int i = 0; i < 5; i++) {
    float x = i * 100;
    ellipse(x, yc[i], 40, 40);
  }
}