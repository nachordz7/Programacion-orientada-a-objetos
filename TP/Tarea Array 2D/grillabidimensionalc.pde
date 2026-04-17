int col = 12;
int fil = 12;

float[][] matriz;

void setup() {
  size(800, 600);
  matriz = new float[col][fil];
}

void draw() {
  background(255);

  float ancho = width / col;
  float alto  = height / fil;

  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {

      float x = i * ancho;
      float y = j * alto;
      
      float centroX = x + ancho/2;
      float centroY = y + alto/2;

      float d = dist(mouseX, mouseY, centroX, centroY);
      matriz[i][j] = d;
    }
  }

  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {

      float x = i * ancho;
      float y = j * alto;

     
      float gris = map(matriz[i][j], 0, dist(0, 0, width, height), 255, 0);

      fill(gris);
      noStroke();
      rect(x, y, ancho, alto);
    }
  }
}
