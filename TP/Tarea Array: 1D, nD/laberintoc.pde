int columnas = 10;
int filas = 10;

boolean[][][] laberinto;

float anchoCelda;
float altoCelda;

void setup() {
  size(800, 600);

  laberinto = new boolean[columnas][filas][6];

  anchoCelda = width / columnas;
  altoCelda = height / filas;

  
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      for (int k = 0; k < 6; k++) {
        laberinto[i][j][k] = random(1) > 0.5;
      }
    }
  }
}

void draw() {
  background(255);

  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {

      float x = i * anchoCelda;
      float y = j * altoCelda;

      stroke(0);
      
      if (laberinto[i][j][0]) {
        line(x, y, x + anchoCelda, y);
      }
      
      if (laberinto[i][j][1]) {
        line(x + anchoCelda, y, x + anchoCelda, y + altoCelda);
      }
      
      if (laberinto[i][j][2]) {
        line(x, y + altoCelda, x + anchoCelda, y + altoCelda);
      }
     
      if (laberinto[i][j][3]) {
        line(x, y, x, y + altoCelda);
      }

      if (laberinto[i][j][4]) {
        line(x, y, x + anchoCelda, y + altoCelda);
      }
     
      if (laberinto[i][j][5]) {
        line(x + anchoCelda, y, x, y + altoCelda);
      }
    }
  }
}
