int columnas = 16;
int filas = 9;
boolean[][] estados;
float ancho;
float alto;

void setup() {
  size(800, 600);

  estados = new boolean[columnas][filas];

  ancho = width / columnas;
  alto = height / filas;
}

void draw() {
  background(255);

  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {

      float x = i * ancho;
      float y = j * alto;

      if (estados[i][j] == false) {
        fill(255);
        stroke(0);
        rect(x, y, ancho, alto);
      } else {
        dibujarEstampa(x, y, ancho, alto);
      }
    }
  }
}
