/*
10 círculos en línea
cada círculo tiene altura guardada en array
con mousePressed:
el círculo cambia su Y según mouseY
*/
int cantidad = 10;
float [] yc = new float[cantidad];

void setup() {
  size(800, 600);

  for(int i = 0; i < cantidad; i++) {
    yc[i] = height/2;
  }
}

void draw() {

  background(200,144,66);

  float ancho = width / cantidad;

  for(int i = 0; i < cantidad; i++) {

    float x = i * ancho;

    ellipse(x, yc[i], 50, 50);
  }

  if(mousePressed) {

    int indice = int(mouseX / ancho);

    if(indice >= 0 && indice < cantidad) {

      yc[indice] = mouseY;
    }
  }
}