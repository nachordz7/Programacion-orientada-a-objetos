//corregir linea 15 a 21
int cantFil = 15;
int cantCol = 9;
boolean [] [] fueCliqueado;
void setup() {
  size(800, 600);
  fueCliqueado = new boolean [cantFil] [cantCol];
}

void draw() {
  background(255);
  float ancho = width/cantCol;
  float alto = height/cantFil;

  for (int i=0; i< cantCol; i++) {
    for (int j =0; j< cantFil; j++) {
      float x = i * ancho;
      float y = j * alto;
      float limiteDerecho = x + ancho;
      float limiteInf = y + alto;

      if ( (x<mouseX) && (mouseX < limiteDerecho) && (y < mouseY) && (mouseY < limiteInf) ) {
        fueCliqueado[i][j] = true;
      }
      if (fueCliqueado[i][j]) {
        fill(0);
      } else fill(255);
      rect(x, y, ancho, alto);
    }
  }
}

/*
void mousePressed() {
 if(fueCliqueado[i][j]){
 fill(255);
 } else fill(255);
 
 //fill(fueCliqueado[i][j]?0:255);
 }
 */


