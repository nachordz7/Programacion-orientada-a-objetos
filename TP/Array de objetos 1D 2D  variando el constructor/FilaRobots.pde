/*
Una Fila de Robots (Array 1D)Inicializar objetos en fila. Imagina que tienes n robots  en una pista de carreras recta. 
Quieres que cada uno se coloque automáticamente en una posición de salida diferente a lo largo de la línea separados a distancia fija.
Usando la Clase ya creada: Declarar e inicializar un array de 1 dimensión que contenga n objetos Movil, pasándole a cada uno una posición distinta 
*/

class Movil {

  PVector pos, vel;

  int r = 40;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-4, 4), random(-4, 4));
  }

  void mover() {
    pos.add(vel);
    this.contener();
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width) {
      pos.sub(vel);
      vel.x *= -1;
    }

    if (pos.y < 0 || pos.y > height) {
      pos.sub(vel);
      vel.y *= -1;
    }
  }
}

Movil[] moviles;
int cant = 10;
int sep = 60;

void setup() {
  size(800, 600);

  moviles = new Movil[cant];

  for (int i = 0; i < cant; i++) {
    moviles[i] = new Movil(50 + i * sep, height/2);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < cant; i++) {
    moviles[i].mover();
    moviles[i].mostrar();
  }
}
