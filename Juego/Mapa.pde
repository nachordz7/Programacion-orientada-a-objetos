
class Mapa {

  float grosor = 90;

  PVector[][] caminos;
  float[][] habitaciones;

  float inicioX;
  float inicioY;

  float[] inicioZona;
  float[] meta;


  Mapa() {
    cargarNivel(1);
  }


  PVector[] camino(float... coordenadas) {

    PVector[] resultado = new PVector[coordenadas.length / 2];

    for (int i = 0; i < resultado.length; i++) {
      resultado[i] = new PVector(
        coordenadas[i * 2],
        coordenadas[i * 2 + 1]
      );
    }

    return resultado;
  }


  void cargarNivel(int numero) {

    habitaciones = new float[0][4];

    inicioX = 50;
    inicioY = 80;

    inicioZona = new float[] {15, 45, 90, 90};
    meta = new float[] {795, 465, 90, 90};


    // NIVEL 1
    if (numero == 1) {

      caminos = new PVector[][] {
        camino(
          60, 90,
          60, 420,
          360, 420,
          360, 240,
          720, 240,
          720, 510,
          840, 510
        )
      };

    }


    // NIVEL 2
    else if (numero == 2) {

      caminos = new PVector[][] {
        camino(
          60, 90,
          300, 90,
          300, 300,
          600, 300,
          600, 150,
          840, 150,
          840, 510
        )
      };

    }


    // NIVEL 3
    else if (numero == 3) {

      caminos = new PVector[][] {
        camino(
          60, 90,
          60, 510,
          240, 510,
          240, 180,
          450, 180,
          450, 420,
          690, 420,
          690, 510,
          840, 510
        )
      };

    }


    // NIVEL 4
    else if (numero == 4) {

      caminos = new PVector[][] {
        camino(
          60, 90,
          240, 90,
          240, 480,
          420, 480,
          420, 180,
          660, 180,
          660, 510,
          840, 510
        )
      };

    }


    // NIVEL 5
    else if (numero == 5) {

      caminos = new PVector[][] {
        camino(
          60, 90,
          240, 90,
          240, 240,
          480, 240,
          480, 90,
          720, 90,
          720, 300,
          540, 300,
          540, 510,
          840, 510
        )
      };

    }


    // NIVEL 6
    else if (numero == 6) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {300, 210, 300, 230},
        {390, 35, 120, 225},
        {130, 285, 210, 100},
        {570, 285, 180, 100},
        {390, 420, 120, 140}
      };

      inicioX = 440;
      inicioY = 65;

      inicioZona = new float[] {405, 35, 90, 90};
      meta = new float[] {190, 290, 90, 90};

    }


    // NIVEL 7
    else if (numero == 7) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {330, 190, 240, 260},
        {300, 120, 100, 110},
        {300, 60, 100, 90}
      };

      inicioX = 440;
      inicioY = 310;

      inicioZona = new float[] {405, 275, 90, 90};
      meta = new float[] {305, 60, 90, 90};

    }


    // NIVEL 8
    else if (numero == 8) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {350, 400, 200, 100},

        {280, 420, 100, 70},
        {230, 350, 80, 100},
        {160, 350, 100, 70},
        {110, 280, 80, 100},
        {40, 280, 100, 70},
        {20, 190, 80, 100},
        {20, 100, 110, 110},

        {520, 420, 100, 70},
        {590, 350, 80, 100},
        {640, 350, 100, 70},
        {710, 280, 80, 100},
        {750, 280, 100, 70},
        {790, 190, 80, 100},
        {780, 100, 110, 110}
      };

      inicioX = 440;
      inicioY = 435;

      inicioZona = new float[] {405, 405, 90, 90};
      meta = new float[] {790, 110, 90, 90};

    }


    // NIVEL 9
    else if (numero == 9) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {150, 210, 220, 90},
        {340, 250, 220, 170},
        {400, 80, 100, 180},
        {540, 290, 230, 90},
        {400, 410, 100, 150}
      };

      inicioX = 175;
      inicioY = 245;

      inicioZona = new float[] {150, 210, 90, 90};
      meta = new float[] {405, 440, 90, 90};

    }


    // NIVEL 10
    else if (numero == 10) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {80, 80, 240, 100},
        {230, 170, 90, 260},
        {230, 420, 450, 90},
        {590, 250, 90, 260},
        {590, 160, 220, 100}
      };

      inicioX = 110;
      inicioY = 110;

      inicioZona = new float[] {85, 85, 90, 90};
      meta = new float[] {650, 165, 90, 90};

    }


    // NIVEL 11
    else if (numero == 11) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {70, 450, 200, 120},
        {230, 390, 100, 120},
        {300, 300, 220, 100},
        {480, 210, 100, 100},
        {560, 120, 250, 120}
      };

      inicioX = 110;
      inicioY = 485;

      inicioZona = new float[] {85, 465, 90, 90};
      meta = new float[] {640, 135, 90, 90};

    }


    // NIVEL 12
    else if (numero == 12) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {300, 210, 300, 240},
        {180, 100, 220, 120},
        {80, 300, 230, 100},
        {590, 300, 220, 100},
        {400, 440, 100, 150}
      };

      inicioX = 210;
      inicioY = 130;

      inicioZona = new float[] {185, 105, 90, 90};
      meta = new float[] {405, 470, 90, 90};

    }


    // NIVEL 13
    else if (numero == 13) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {100, 100, 160, 90},
        {210, 160, 90, 230},
        {210, 360, 300, 90},
        {420, 250, 90, 120},
        {420, 180, 250, 90},
        {650, 180, 90, 260},
        {560, 390, 180, 90}
      };

      inicioX = 130;
      inicioY = 125;

      inicioZona = new float[] {105, 100, 90, 90};
      meta = new float[] {605, 390, 90, 90};

    }


    // NIVEL 14
    else if (numero == 14) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {60, 80, 250, 150},
        {220, 220, 90, 220},
        {220, 420, 300, 120},
        {430, 300, 90, 220},
        {430, 180, 300, 130},
        {650, 300, 90, 150},
        {650, 400, 180, 120}
      };

      inicioX = 100;
      inicioY = 110;

      inicioZona = new float[] {80, 90, 90, 90};
      meta = new float[] {680, 415, 90, 90};

    }


    // NIVEL 15
    else if (numero == 15) {

      caminos = new PVector[0][];

      habitaciones = new float[][] {
        {300, 220, 300, 230},
        {100, 300, 210, 90},
        {400, 80, 100, 150},
        {590, 300, 220, 90},
        {400, 440, 100, 150},
        {100, 100, 190, 90},
        {280, 130, 100, 110}
      };

      inicioX = 440;
      inicioY = 500;

      inicioZona = new float[] {405, 475, 90, 90};
      meta = new float[] {150, 100, 90, 90};

    }


    else {
      cargarNivel(1);
    }

  }


  // MOSTRAR MAPA
  void mostrar() {

    dibujarCaminos(grosor + 6, color(20));
    dibujarHabitaciones(3, color(20));

    dibujarCaminos(grosor, color(248));
    dibujarHabitaciones(0, color(248));

    rectMode(CORNER);
    noStroke();

    fill(100, 230, 130);

    // Zona de inicio
    rect(
      inicioZona[0] + 10,
      inicioZona[1] + 10,
      inicioZona[2] - 20,
      inicioZona[3] - 20
    );

    // Zona de llegada
    rect(
      meta[0] + 10,
      meta[1] + 10,
      meta[2] - 20,
      meta[3] - 20
    );

  }


  // DIBUJAR CAMINOS
  void dibujarCaminos(float ancho, color tono) {

    stroke(tono);
    strokeWeight(ancho);
    strokeCap(SQUARE);
    strokeJoin(MITER);
    noFill();

    for (int i = 0; i < caminos.length; i++) {

      beginShape();

      for (int j = 0; j < caminos[i].length; j++) {
        vertex(caminos[i][j].x, caminos[i][j].y);
      }

      endShape();

    }

  }


  // DIBUJAR HABITACIONES
  void dibujarHabitaciones(float margen, color tono) {

    rectMode(CORNER);
    noStroke();
    fill(tono);

    for (int i = 0; i < habitaciones.length; i++) {

      rect(
        habitaciones[i][0] - margen,
        habitaciones[i][1] - margen,
        habitaciones[i][2] + margen * 2,
        habitaciones[i][3] + margen * 2
      );

    }

  }


  // COMPROBAR SI UN PUNTO ES TRANSITABLE
  boolean puntoTransitable(float px, float py) {

    for (int i = 0; i < habitaciones.length; i++) {

      float x = habitaciones[i][0];
      float y = habitaciones[i][1];
      float w = habitaciones[i][2];
      float h = habitaciones[i][3];

      if (px >= x - 2 && px <= x + w + 2 &&
          py >= y - 2 && py <= y + h + 2) {

        return true;

      }

    }

    float margen = grosor / 2 + 2;

    for (int i = 0; i < caminos.length; i++) {

      for (int j = 0; j < caminos[i].length - 1; j++) {

        PVector a = caminos[i][j];
        PVector b = caminos[i][j + 1];

        if (a.x == b.x) {

          if (abs(px - a.x) <= margen &&
              py >= min(a.y, b.y) - margen &&
              py <= max(a.y, b.y) + margen) {

            return true;

          }

        } else if (a.y == b.y) {

          if (abs(py - a.y) <= margen &&
              px >= min(a.x, b.x) - margen &&
              px <= max(a.x, b.x) + margen) {

            return true;

          }

        }

      }

    }

    return false;

  }


  // COMPROBAR POSICIÓN DEL JUGADOR
  boolean posicionValida(float x, float y, float tam) {

    float mitad = tam / 2;

    return
      puntoTransitable(x + mitad, y + mitad) &&
      puntoTransitable(x + mitad, y) &&
      puntoTransitable(x + mitad, y + tam) &&
      puntoTransitable(x, y + mitad) &&
      puntoTransitable(x + tam, y + mitad);

  }


  // COMPROBAR LLEGADA A LA META
  boolean llegoMeta(Jugador jugador) {

    float centroX = jugador.posicion.x + jugador.tamano / 2;
    float centroY = jugador.posicion.y + jugador.tamano / 2;

    return
      centroX >= meta[0] &&
      centroX <= meta[0] + meta[2] &&
      centroY >= meta[1] &&
      centroY <= meta[1] + meta[3];

  }

}
