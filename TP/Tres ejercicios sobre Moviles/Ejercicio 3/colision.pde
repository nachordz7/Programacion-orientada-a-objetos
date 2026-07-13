/*
Ejercicio 3: colisión de Móviles
 Implementar dos objetos móviles en la pantalla:
 ambos deben tener un movimiento acelerado producto de la gravedad. Al detectarse la colisión entre ellos deben chocar, alejándose y achicarse.
 */

Movil m1, m2;
PVector g = new PVector(0, 0.2);

void setup() {
  size(800, 600);

  m1 = new Movil(300, 100);
  m2 = new Movil(500, 100);

  m1.vel = new PVector(3, 0);
  m2.vel = new PVector(-3, 0);
}

void draw() {
  background(50);

  m1.agregarFuerza(g);
  m2.agregarFuerza(g);

  if (m1.choca(m2.pos, m2.d)) {
    m1.rebotar(m2);
    m2.rebotar(m1);
  }

  m1.mover();
  m2.mover();

  m1.mostrar();
  m2.mostrar();
}
