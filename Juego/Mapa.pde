
class Mapa {

  int numero;

  float grosor = 90;

  PVector[][] caminos;
  float[][] habitaciones;

  float inicioX;
  float inicioY;

  float[] inicioZona;
  float[] meta;


  Mapa(int numero) {
    cargarNivel(numero);
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

    this.numero = numero;

    habitaciones = new float[0][4];
    caminos = new PVector[0][];

    inicioX = 50;
    inicioY = 80;

    inicioZona = new float[] {15, 45, 90, 90};
    meta = new float[] {795, 465, 90, 90};


  // NIVEL 1 - TRES HABITACIONES

if (numero == 1) {

  habitaciones = new float[][] {

    // Habitacion 1 - Inicio
    {100, 270, 90, 90},

    // Habitacion 2 - Rectangulo principal
    {190, 180, 510, 280},

    // Habitacion 3 - Meta
    {700, 270, 90, 90}

  };

  inicioX = 135;
  inicioY = 315;

  inicioZona = new float[] {110, 285, 70, 70};
  meta = new float[] {710, 285, 70, 70};
}

    // NIVEL 2 - FORMA DE U

    else if (numero == 2) {

      habitaciones = new float[][] {

        // Brazo izquierdo de la U
        {150, 130, 120, 350},

        // Base de la U
        {150, 360, 500, 120},

        // Brazo derecho de la U
        {530, 130, 120, 350}

      };

      inicioX = 185;
      inicioY = 165;

      inicioZona = new float[] {165, 145, 80, 80};
      meta = new float[] {550, 145, 80, 80};
    }


    // NIVEL 3 - VARIOS CAMINOS CONECTADOS

    else if (numero == 3) {

      habitaciones = new float[][] {
        {65, 180, 240, 250},
        {260, 245, 380, 150},
        {350, 65, 170, 200},
        {590, 180, 240, 250},
        {350, 390, 170, 190}
      };

    inicioX = 425;
inicioY = 125;

inicioZona = new float[] {390, 90, 90, 90};
      meta = new float[] {390, 465, 90, 90};
    }


   
// NIVEL 4 - LABERINTO FINO AMPLIADO

else if (numero == 4) {

  habitaciones = new float[][] {

    // Entrada
    {70, 95, 105, 65},

    // Pasillo superior
    {140, 95, 480, 65},

    // Bajada derecha
    {555, 95, 65, 215},

    // Pasillo hacia la izquierda
    {300, 245, 320, 65},

    // Bajada central
    {300, 245, 65, 180},

    // Pasillo inferior hacia la derecha
    {300, 360, 350, 65},

    // Subida derecha
    {585, 245, 65, 180},

    // Pasillo hacia la izquierda
    {150, 245, 500, 65},

    // Bajada izquierda
    {150, 245, 65, 205},

    // Salida inferior
    {150, 385, 115, 65}
  };

   inicioX = 90;
  inicioY = 115;

  // Zona verde de inicio
  inicioZona = new float[] {70, 100, 65, 55};

  // Zona verde de llegada
meta = new float[] {150, 385, 115, 65};
}



    // NIVEL 5 - ESCALERA IRREGULAR

    else if (numero == 5) {

      habitaciones = new float[][] {
        {55, 65, 210, 150},
        {205, 165, 190, 170},
        {355, 275, 190, 170},
        {505, 375, 180, 150},
        {645, 440, 210, 120}
      };

      inicioX = 90;
      inicioY = 100;

      inicioZona = new float[] {65, 75, 90, 90};
      meta = new float[] {700, 455, 90, 90};
    }


    // NIVEL 6 - DISEÑO ORIGINAL

    else if (numero == 6) {

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


    // NIVEL 7 - DISEÑO ORIGINAL

    else if (numero == 7) {

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


    // NIVEL 8 - DISEÑO ORIGINAL

    else if (numero == 8) {

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


    // NIVEL 9 - GRAN SALA CENTRAL

    else if (numero == 9) {

      habitaciones = new float[][] {
        {250, 175, 400, 300},
        {70, 260, 210, 130},
        {350, 55, 200, 150},
        {620, 260, 210, 130},
        {350, 445, 200, 150}
      };

      inicioX = 100;
      inicioY = 295;

      inicioZona = new float[] {75, 270, 90, 90};
      meta = new float[] {405, 475, 90, 90};
    }


    // NIVEL 10 - DISEÑO ORIGINAL

    else if (numero == 10) {

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

// NIVEL 11 - DOS GRANDES SECTORES

else if (numero == 11) {

  habitaciones = new float[][] {
    {60, 110, 300, 430},
    {330, 270, 240, 100},
    {540, 110, 300, 430}
  };

// INICIO - ZONA SEGURA IZQUIERDA
inicioX = 75;
inicioY = 310;
inicioZona = new float[] {60, 270, 90, 100};

// META - ZONA SEGURA DERECHA
meta = new float[] {750, 270, 90, 100};

}


    // NIVEL 12 - RECTANGULO LARGO CON ANTENAS INVERTIDAS

    else if (numero == 12) {

      habitaciones = new float[][] {

        // Rectangulo central
        {50, 350, 800, 100},

        // Antena izquierda
        {250, 300, 100, 50},
        {200, 250, 100, 50},
        {150, 200, 100, 50},
        {100, 150, 100, 50},

        // Antena derecha
        {550, 300, 100, 50},
        {600, 250, 100, 50},
        {650, 200, 100, 50},
        {700, 150, 100, 50}
      };

      // Aparición en el centro
      inicioX = 425;
      inicioY = 385;

      // Zona inicial y meta en el centro
inicioX = 425;
inicioY = 385;

inicioZona = new float[] {385, 345, 80, 100};
meta = new float[] {385, 345, 80, 100};
    }


    // NIVEL 13 - RECORRIDO IRREGULAR

    else if (numero == 13) {

      habitaciones = new float[][] {
        {65, 75, 270, 180},
        {285, 155, 270, 150},
        {390, 270, 190, 200},
        {530, 390, 300, 150}
      };

      inicioX = 100;
      inicioY = 115;

      inicioZona = new float[] {75, 90, 90, 90};
      meta = new float[] {650, 415, 90, 90};
    }


    
// NIVEL 14 - RECORRIDO EN FORMA DE ANILLO

else if (numero == 14) {

  habitaciones = new float[][] {
    {150, 65, 600, 125},
    {95, 160, 140, 340},
    {665, 160, 140, 340},
    {150, 435, 600, 125},

    // HABITACIÓN NUEVA PARA LA META
    {400, 560, 100, 80}
  };

  // INICIO
  inicioX = 450;
  inicioY = 100;
  inicioZona = new float[] {405, 65, 90, 90};

  // META - HABITACIÓN INFERIOR
  meta = new float[] {405, 555, 90, 80};
}



    // NIVEL 15 - DESAFIO FINAL

    else if (numero == 15) {

      habitaciones = new float[][] {
        {250, 175, 400, 300},
        {65, 275, 220, 150},
        {365, 55, 170, 150},
        {620, 275, 220, 150},
        {365, 445, 170, 150}
      };

      inicioX = 100;
      inicioY = 300;

      inicioZona = new float[] {75, 275, 90, 90};
      meta = new float[] {655, 275, 90, 90};
    }


    else {
      cargarNivel(1);
    }

  }


  // MOSTRAR MAPA

  void mostrar() {

    // Bordes negros
    dibujarCaminos(grosor + 6, color(20));
    dibujarHabitaciones(3, color(20));

    // Base blanca
    dibujarCaminos(grosor, color(248));
    dibujarHabitaciones(0, color(248));

    // Grilla estilo ajedrez
    dibujarGrilla();

    // Zonas verdes
    rectMode(CORNER);
    noStroke();

    fill(100, 230, 130);

    rect(
      inicioZona[0],
      inicioZona[1],
      inicioZona[2],
      inicioZona[3]
    );

    rect(
      meta[0],
      meta[1],
      meta[2],
      meta[3]
    );

    // Número de nivel
    fill(0);
    textAlign(RIGHT, TOP);
    textSize(18);

    text("Nivel: " + numero, 880, 15);

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


  // GRILLA ESTILO AJEDREZ

  void dibujarGrilla() {

    int tamCasilla = 30;

color colorClaro = color(245, 239, 220);  // Crema
color colorOscuro = color(155, 195, 215);  // Celeste
    noStroke();
    rectMode(CORNER);

    for (int i = 0; i < habitaciones.length; i++) {

      float xInicial = habitaciones[i][0];
      float yInicial = habitaciones[i][1];

      float ancho = habitaciones[i][2];
      float alto = habitaciones[i][3];

      float xFinal = xInicial + ancho;
      float yFinal = yInicial + alto;

      for (int x = floor(xInicial / tamCasilla) * tamCasilla;
           x < xFinal;
           x += tamCasilla) {

        for (int y = floor(yInicial / tamCasilla) * tamCasilla;
             y < yFinal;
             y += tamCasilla) {

          // Alternar colores
          if ((x / tamCasilla + y / tamCasilla) % 2 == 0) {
            fill(colorClaro);
          } else {
            fill(colorOscuro);
          }

          // Recortar casillas en los bordes
          float dibujarX = max(x, xInicial);
          float dibujarY = max(y, yInicial);

          float dibujarAncho =
            min(x + tamCasilla, xFinal) - dibujarX;

          float dibujarAlto =
            min(y + tamCasilla, yFinal) - dibujarY;

          rect(
            dibujarX,
            dibujarY,
            dibujarAncho,
            dibujarAlto
          );

        }
      }
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
