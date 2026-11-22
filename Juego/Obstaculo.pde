
class Obstaculo {

  PVector posicion;

  float diametro = 20;

  // TIPOS DE OBSTÁCULOS

  final int LINEAL = 0;
  final int FIJO = 1;
  final int CIRCULAR = 2;
  final int PERIMETRAL = 3;

  int tipo = LINEAL;


  // MOVIMIENTO LINEAL

  float velocidadX = 0;
  float velocidadY = 0;

  float limiteMinX;
  float limiteMaxX;

  float limiteMinY;
  float limiteMaxY;


  // MOVIMIENTO CIRCULAR

  PVector centro;

  float radio;
  float angulo = 0;
  float velocidadAngular = 0.03;


  // MOVIMIENTO PERIMETRAL

  float perimetroIzquierda;
  float perimetroDerecha;
  float perimetroArriba;
  float perimetroAbajo;

  float velocidadPerimetral = 2.5;

  int direccionPerimetral = 0;


  // OBSTÁCULO LINEAL SIMPLE

  Obstaculo(float x, float y) {

    posicion = new PVector(x, y);

    tipo = LINEAL;

    velocidadY = 2.8;

    limiteMinY = 165;
    limiteMaxY = 485;
  }


  // OBSTÁCULO LINEAL PERSONALIZADO

  Obstaculo(
    float x,
    float y,
    float vx,
    float vy,
    float minX,
    float maxX,
    float minY,
    float maxY
  ) {

    posicion = new PVector(x, y);

    tipo = LINEAL;

    velocidadX = vx;
    velocidadY = vy;

    limiteMinX = minX;
    limiteMaxX = maxX;

    limiteMinY = minY;
    limiteMaxY = maxY;
  }


  // OBSTÁCULO FIJO

  Obstaculo(float x, float y, boolean fijo) {

    posicion = new PVector(x, y);

    tipo = FIJO;
  }


  // OBSTÁCULO CIRCULAR

  Obstaculo(
    float centroX,
    float centroY,
    float radio,
    float velocidadAngular
  ) {

    centro = new PVector(centroX, centroY);

    this.radio = radio;
    this.velocidadAngular = velocidadAngular;

    tipo = CIRCULAR;

    posicion = new PVector(
      centroX + radio,
      centroY
    );
  }


  // OBSTÁCULO PERIMETRAL

  Obstaculo(
    float x,
    float y,
    float izquierda,
    float derecha,
    float arriba,
    float abajo,
    float velocidad
  ) {

    posicion = new PVector(x, y);

    tipo = PERIMETRAL;

    perimetroIzquierda = izquierda;
    perimetroDerecha = derecha;

    perimetroArriba = arriba;
    perimetroAbajo = abajo;

    velocidadPerimetral = abs(velocidad);

    if (abs(y - arriba) < 1) {
      direccionPerimetral = 0;
    }

    else if (abs(x - derecha) < 1) {
      direccionPerimetral = 1;
    }

    else if (abs(y - abajo) < 1) {
      direccionPerimetral = 2;
    }

    else if (abs(x - izquierda) < 1) {
      direccionPerimetral = 3;
    }
  }


  // MOVIMIENTO

  void mover() {

    // MOVIMIENTO LINEAL

    if (tipo == LINEAL) {

      posicion.x += velocidadX;
      posicion.y += velocidadY;

      if (velocidadX != 0) {

        if (posicion.x <= limiteMinX ||
            posicion.x >= limiteMaxX) {

          velocidadX *= -1;
        }
      }

      if (velocidadY != 0) {

        if (posicion.y <= limiteMinY ||
            posicion.y >= limiteMaxY) {

          velocidadY *= -1;
        }
      }
    }


    // MOVIMIENTO CIRCULAR

    else if (tipo == CIRCULAR) {

      angulo += velocidadAngular;

      posicion.x = centro.x + cos(angulo) * radio;
      posicion.y = centro.y + sin(angulo) * radio;
    }


    // MOVIMIENTO PERIMETRAL

    else if (tipo == PERIMETRAL) {

      float velocidad = velocidadPerimetral;

      // DERECHA

      if (direccionPerimetral == 0) {

        posicion.x += velocidad;

        if (posicion.x >= perimetroDerecha) {

          posicion.x = perimetroDerecha;
          direccionPerimetral = 1;
        }
      }

      // ABAJO

      else if (direccionPerimetral == 1) {

        posicion.y += velocidad;

        if (posicion.y >= perimetroAbajo) {

          posicion.y = perimetroAbajo;
          direccionPerimetral = 2;
        }
      }

      // IZQUIERDA

      else if (direccionPerimetral == 2) {

        posicion.x -= velocidad;

        if (posicion.x <= perimetroIzquierda) {

          posicion.x = perimetroIzquierda;
          direccionPerimetral = 3;
        }
      }

      // ARRIBA

      else if (direccionPerimetral == 3) {

        posicion.y -= velocidad;

        if (posicion.y <= perimetroArriba) {

          posicion.y = perimetroArriba;
          direccionPerimetral = 0;
        }
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


  // DETECTAR COLISIÓN

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
