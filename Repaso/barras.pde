//barras 
int cantidad = 10;
float[] barras = new float[cantidad];

void setup() {
  size(800, 400);

  for (int i = 0; i < cantidad; i++) {
    barras[i] = 100;
  }
}

void draw() {
  background(255);

  float ancho = width / cantidad;

  for (int i = 0; i < cantidad; i++) {
    float x = i * ancho;
    rect(x, height - barras[i], ancho, barras[i]);
  }

  if (mousePressed) {

    int indice = int(mouseX / ancho);

    if (indice >= 0 && indice < cantidad) {
      barras[indice] = height - mouseY;
    }
  }
}