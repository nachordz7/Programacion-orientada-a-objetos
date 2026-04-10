int maxPuntos = 10;

// Posiciones
float[] xs = new float[maxPuntos];
float[] ys = new float[maxPuntos];

int indice = 0;
int cantidad = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(255);

  for (int i = 0; i < cantidad; i++) {
    ellipse(xs[i], ys[i], 20, 20); // circulo
  }
}

void mousePressed() {
  xs[indice] = mouseX;
  ys[indice] = mouseY;

  indice = (indice + 1) % maxPuntos;

  if (cantidad < maxPuntos) {
    cantidad++;
  }
}
