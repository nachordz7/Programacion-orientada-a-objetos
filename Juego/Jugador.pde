
class Jugador {

  PVector posicion;
  PVector velocidad;

  boolean arriba = false;
  boolean abajo = false;
  boolean izquierda = false;
  boolean derecha = false;

  float velocidadMax = 3;
  float tamano = 20;


  Jugador(float x, float y) {

    posicion = new PVector(x, y);
    velocidad = new PVector(0, 0);
  }


  // MOVIMIENTO
  void mover(Mapa mapa) {

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

    // Movimiento horizontal
    float nuevaX = posicion.x + velocidad.x;

    if (mapa.posicionValida(nuevaX, posicion.y, tamano)) {
      posicion.x = nuevaX;
    }

    // Movimiento vertical
    float nuevaY = posicion.y + velocidad.y;

    if (mapa.posicionValida(posicion.x, nuevaY, tamano)) {
      posicion.y = nuevaY;
    }
  }


  // DIBUJAR JUGADOR
  void mostrar() {

    fill(220, 40, 40);
    stroke(0);
    strokeWeight(2);

    rect(
      posicion.x,
      posicion.y,
      tamano,
      tamano
    );
  }


  // TECLAS PRESIONADAS
  void teclaPresionada() {

    if (key == 'w' || key == 'W' || keyCode == UP) {
      arriba = true;
    }

    if (key == 's' || key == 'S' || keyCode == DOWN) {
      abajo = true;
    }

    if (key == 'a' || key == 'A' || keyCode == LEFT) {
      izquierda = true;
    }

    if (key == 'd' || key == 'D' || keyCode == RIGHT) {
      derecha = true;
    }
  }


  // TECLAS SOLTADAS
  void teclaSoltada() {

    if (key == 'w' || key == 'W' || keyCode == UP) {
      arriba = false;
    }

    if (key == 's' || key == 'S' || keyCode == DOWN) {
      abajo = false;
    }

    if (key == 'a' || key == 'A' || keyCode == LEFT) {
      izquierda = false;
    }

    if (key == 'd' || key == 'D' || keyCode == RIGHT) {
      derecha = false;
    }
  }


  // REINICIAR JUGADOR
  void reiniciar(float x, float y) {

    posicion.set(x, y);
    velocidad.set(0, 0);

    arriba = false;
    abajo = false;
    izquierda = false;
    derecha = false;
  }

}
