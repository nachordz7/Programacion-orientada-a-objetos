//1er Programa que proyecte lineas desde el centro, tanto arriba como abajo.

int cant = 10;
void setup() {
  size(800, 600);
}

void draw() {
  generarLineas();
}

void generarLineas() {

  float sep = width / cant;
  for (int i=0; i<cant; i++) {
    float x = i * sep;
    line(x, 0, width/2, height/2);
    line(x, height, width/2, height/2);
  }
}
