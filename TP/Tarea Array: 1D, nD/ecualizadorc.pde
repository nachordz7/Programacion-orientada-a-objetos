int cantidad = 20;
float[] barras = new float[cantidad];

void setup() {
  size(800, 600);

  
  for (int i = 0; i < cantidad; i++) {
    barras[i] = height/2;
  }
}

void draw() {
  background(255);

  float ancho = width / cantidad;

  for (int i = 0; i < cantidad; i++) {

    float x = i * ancho;

    fill(0);
    rect(x, height - barras[i], ancho, barras[i]);
  }
  if (mousePressed) {
    int indice = int(mouseX / ancho);

    if (indice >= 0 && indice < cantidad) {
      barras[indice] = constrain(height - mouseY, 0, height);
    }
  }
}
