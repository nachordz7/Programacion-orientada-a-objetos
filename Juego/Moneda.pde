
class Moneda {

  PVector posicion;
  float diametro = 16;
  boolean recogida = false;


  Moneda(float x, float y) {

    posicion = new PVector(x, y);

  }


  void mostrar() {

    if (recogida) {
      return;
    }

    fill(255, 210, 0);
    stroke(180, 120, 0);
    strokeWeight(2);

    ellipse(
      posicion.x,
      posicion.y,
      diametro,
      diametro
    );

    noStroke();

  }


  boolean tocar(Jugador jugador) {

    if (recogida) {
      return false;
    }

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

    if (distancia < diametro / 2) {

      recogida = true;
      return true;

    }

    return false;

  }

}
