class Jugador {

  PVector posicion;
  PVector velocidad;

  boolean arriba = false;
  boolean abajo = false;
  boolean izquierda = false;
  boolean derecha = false;

  float velocidadMax = 4;

  Jugador(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = new PVector(0, 0);
  }

  void mover() {

    float x = 0;
    float y = 0;

    if (arriba) y -= 1;
    if (abajo) y += 1;
    if (izquierda) x -= 1;
    if (derecha) x += 1;

    velocidad.set(x, y);

    if (velocidad.mag() > 0) {
      velocidad.normalize();
      velocidad.mult(velocidadMax);
    }

    posicion.add(velocidad);

    posicion.x = constrain(posicion.x, 150, 530);
    posicion.y = constrain(posicion.y, 150, 330);
  }

  void mostrar() {
    fill(220, 40, 40);
    stroke(0);
    strokeWeight(2);
    rect(posicion.x, posicion.y, 20, 20);
  }

  void teclaPresionada() {
    if (key == 'w' || key == 'W' || keyCode == UP) arriba = true;
    if (key == 's' || key == 'S' || keyCode == DOWN) abajo = true;
    if (key == 'a' || key == 'A' || keyCode == LEFT) izquierda = true;
    if (key == 'd' || key == 'D' || keyCode == RIGHT) derecha = true;
  }

  void teclaSoltada() {
    if (key == 'w' || key == 'W' || keyCode == UP) arriba = false;
    if (key == 's' || key == 'S' || keyCode == DOWN) abajo = false;
    if (key == 'a' || key == 'A' || keyCode == LEFT) izquierda = false;
    if (key == 'd' || key == 'D' || keyCode == RIGHT) derecha = false;
  }
}
