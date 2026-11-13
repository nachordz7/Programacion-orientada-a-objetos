
class Obstaculo {

  PVector posicion;

  float diametro = 20;
  float velocidad = 2.8;

  boolean horizontal = false;


  // CONSTRUCTOR
  Obstaculo(float x, float y) {

    posicion = new PVector(x, y);

  }


  // MOVIMIENTO
  void mover() {

    if (horizontal) {

      posicion.x += velocidad;

      if (posicion.x <= 110 || posicion.x >= 790) {
        velocidad *= -1;
      }

    } else {

      posicion.y += velocidad;

      if (posicion.y <= 165 || posicion.y >= 485) {
        velocidad *= -1;
      }

    }

  }


  // DIBUJAR OBSTÁCULO
  void mostrar() {

    fill(0, 0, 255);
    stroke(0);
    strokeWeight(2);

    ellipse(
      posicion.x,
      posicion.y,
      diametro,
      diametro
    );

  }


  // DETECTAR COLISIÓN CON EL JUGADOR
  boolean colisiona(Jugador jugador) {

    float puntoX = constrain(
      posicion.x,
      jugador.posicion.x,
      jugador.posicion.x + jugador.tamano
    );

    float puntoY = constrain(
      posicion.y,
      jugador.posicion.y,
      jugador.posicion.y + jugador.tamano
    );

    float distancia = dist(
      posicion.x,
      posicion.y,
      puntoX,
      puntoY
    );

    return distancia < diametro / 2;

  }

}
