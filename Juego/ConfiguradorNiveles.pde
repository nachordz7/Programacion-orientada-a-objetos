
class ConfiguradorNiveles {

  int configurar(int numero, Obstaculo[] obstaculos) {

    for (int i = 0; i < obstaculos.length; i++) {
      obstaculos[i] = null;
    }

    int indice = 0;

    // =====================================
    // NIVEL 1
    // =====================================

    if (numero == 1) {

      float[] posicionesX = {250, 350, 450, 550, 650};

      for (int i = 0; i < 5; i++) {
        obstaculos[indice++] = new Obstaculo(
          posicionesX[i], 180, 0, 2.8,
          0, 0, 180, 460
        );
      }

      for (int i = 0; i < 5; i++) {
        obstaculos[indice++] = new Obstaculo(
          posicionesX[i], 460, 0, -2.8,
          0, 0, 180, 460
        );
      }
    }

    // =====================================
    // NIVEL 2
    // =====================================

    else if (numero == 2) {

      for (int i = 0; i < 5; i++) {
        obstaculos[indice] = new Obstaculo(210, 275, 42, 0.055);
        obstaculos[indice++].angulo = TWO_PI / 5 * i;
      }

      for (int i = 0; i < 5; i++) {
        obstaculos[indice] = new Obstaculo(590, 275, 42, 0.055);
        obstaculos[indice++].angulo = TWO_PI / 5 * i;
      }

      obstaculos[indice++] = new Obstaculo(270, 390, 0, 2.5, 0, 0, 380, 460);
      obstaculos[indice++] = new Obstaculo(360, 450, 0, -2.5, 0, 0, 380, 460);
      obstaculos[indice++] = new Obstaculo(450, 390, 0, 2.5, 0, 0, 380, 460);
      obstaculos[indice++] = new Obstaculo(540, 450, 0, -2.5, 0, 0, 380, 460);
      obstaculos[indice++] = new Obstaculo(400, 420, 0, 2.5, 0, 0, 380, 460);
    }

    // =====================================
    // NIVEL 3
    // =====================================

    else if (numero == 3) {

      float[] centrosX = {185, 450, 710};
      float centroY = 305;
      float velocidadGiro = 0.040;
      float[] distancias = {20, 40, 60, 80, 100};

      for (int cruz = 0; cruz < 3; cruz++) {
        for (int brazo = 0; brazo < 4; brazo++) {
          for (int i = 0; i < distancias.length; i++) {

            obstaculos[indice] = new Obstaculo(
              centrosX[cruz], centroY,
              distancias[i], velocidadGiro
            );

            obstaculos[indice++].angulo = TWO_PI / 4 * brazo;
          }
        }
      }
    }

    // =====================================
    // NIVEL 4
    // =====================================

    else if (numero == 4) {

      for (int i = 0; i < 3; i++) {
        obstaculos[indice] = new Obstaculo(230 + i * 130, 115);
        obstaculos[indice].velocidadX = 3;
        obstaculos[indice].velocidadY = 2.8;
        obstaculos[indice].limiteMinX = 155;
        obstaculos[indice].limiteMaxX = 600;
        obstaculos[indice].limiteMinY = 105;
        obstaculos[indice].limiteMaxY = 145;
        indice++;
      }

      obstaculos[indice++] = new Obstaculo(587.5, 202.5, 22.5, 0.035);

      for (int i = 0; i < 3; i++) {
        obstaculos[indice] = new Obstaculo(260 + i * 130, 265);
        obstaculos[indice].velocidadX = -3;
        obstaculos[indice].velocidadY = 2.8;
        obstaculos[indice].limiteMinX = 160;
        obstaculos[indice].limiteMaxX = 640;
        obstaculos[indice].limiteMinY = 255;
        obstaculos[indice].limiteMaxY = 295;
        indice++;
      }

      obstaculos[indice++] = new Obstaculo(332.5, 335, 22.5, 0.035);
      obstaculos[indice++] = new Obstaculo(420, 392, 0, 2.5, 0, 0, 370, 415);
      obstaculos[indice++] = new Obstaculo(550, 392, 0, -2.5, 0, 0, 370, 415);
    }

    // =====================================
    // NIVEL 5
    // =====================================

    else if (numero == 5) {

      float[][] centros = {
        {300, 250},
        {450, 360},
        {595, 450}
      };

      for (int habitacion = 0; habitacion < 3; habitacion++) {
        for (int i = 0; i < 5; i++) {

          obstaculos[indice] = new Obstaculo(
            centros[habitacion][0],
            centros[habitacion][1],
            75, 0.045
          );

          obstaculos[indice++].angulo = TWO_PI / 5 * i;
        }
      }
    }

    // =====================================
    // NIVEL 6
    // =====================================

    else if (numero == 6) {

      float[] distancias = {20, 40, 60, 80, 100, 120, 140};

      for (int brazo = 0; brazo < 4; brazo++) {
        for (int i = 0; i < distancias.length; i++) {

          obstaculos[indice] = new Obstaculo(
            450, 325, distancias[i], 0.035
          );

          obstaculos[indice++].angulo = TWO_PI / 4 * brazo;
        }
      }
    }

    // =====================================
    // NIVEL 7
    // =====================================

    else if (numero == 7) {

      float izquierda = 330;
      float derecha = 570;
      float arriba = 190;
      float abajo = 450;
      float velocidad = 4;

      obstaculos[indice++] = new Obstaculo(
        330, 190, izquierda, derecha, arriba, abajo, velocidad
      );

      for (int i = 1; i <= 26; i++) {
        obstaculos[indice++] = new Obstaculo(
          330, 190 + i * 35,
          izquierda, derecha, arriba, abajo, velocidad
        );
      }
    }

    // =====================================
    // NIVEL 8
    // =====================================

    else if (numero == 8) {

      float velocidad = 3.0;

      float[][] izquierda = {
        {230, 350, 80, 100},
        {160, 350, 100, 70},
        {110, 280, 80, 100},
        {40, 280, 100, 70},
        {20, 190, 80, 100}
      };

      for (int i = 0; i < izquierda.length; i++) {
        float x = izquierda[i][0];
        float y = izquierda[i][1];
        float ancho = izquierda[i][2];
        float alto = izquierda[i][3];

        obstaculos[indice++] = new Obstaculo(
          x + ancho * 0.75, y + alto * 0.25,
          0, velocidad,
          x + 10, x + ancho - 10,
          y + 10, y + alto - 10
        );
      }

      obstaculos[indice++] = new Obstaculo(
        75, 200, velocidad, 0,
        30, 120, 160, 200
      );

      float[][] derecha = {
        {590, 350, 80, 100},
        {640, 350, 100, 70},
        {710, 280, 80, 100}
      };

      for (int i = 0; i < derecha.length; i++) {
        float x = derecha[i][0];
        float y = derecha[i][1];
        float ancho = derecha[i][2];
        float alto = derecha[i][3];

        obstaculos[indice++] = new Obstaculo(
          x + ancho * 0.25, y + alto * 0.75,
          0, -velocidad,
          x + 10, x + ancho - 10,
          y + 10, y + alto - 10
        );
      }

      obstaculos[indice++] = new Obstaculo(
        830, 240, -velocidad, 0,
        800, 860, 200, 280
      );
    }

    // =====================================
    // NIVEL 9
    // =====================================

    else if (numero == 9) {

      float velocidad = 5.0;

      for (int i = 0; i < 6; i++) {
        float y = 190 + i * 55;

        obstaculos[indice++] = new Obstaculo(
          300, y, velocidad, 0,
          275, 625, y, y
        );
      }

      for (int i = 0; i < 5; i++) {
        float y = 217.5 + i * 55;

        obstaculos[indice++] = new Obstaculo(
          600, y, -velocidad, 0,
          275, 625, y, y
        );
      }
    }

    // =====================================
    // NIVEL 10
    // =====================================

    else if (numero == 10) {

      obstaculos[indice++] = new Obstaculo(245, 205, true);
      obstaculos[indice++] = new Obstaculo(305, 260, true);
      obstaculos[indice++] = new Obstaculo(245, 335, true);
      obstaculos[indice++] = new Obstaculo(305, 390, true);

      obstaculos[indice++] = new Obstaculo(
        275, 290, 0, 3.5,
        275, 275, 185, 415
      );

      obstaculos[indice++] = new Obstaculo(300, 435, true);
      obstaculos[indice++] = new Obstaculo(390, 435, true);
      obstaculos[indice++] = new Obstaculo(480, 435, true);
      obstaculos[indice++] = new Obstaculo(570, 435, true);

      obstaculos[indice++] = new Obstaculo(345, 495, true);
      obstaculos[indice++] = new Obstaculo(435, 495, true);
      obstaculos[indice++] = new Obstaculo(525, 495, true);
      obstaculos[indice++] = new Obstaculo(615, 495, true);

      obstaculos[indice++] = new Obstaculo(
        450, 470, 9, 0,
        255, 655, 470, 470
      );

      obstaculos[indice++] = new Obstaculo(605, 280, true);
      obstaculos[indice++] = new Obstaculo(665, 330, true);
      obstaculos[indice++] = new Obstaculo(605, 390, true);
      obstaculos[indice++] = new Obstaculo(665, 440, true);
    }

    else if (numero == 11) {


 

// BARRA IZQUIERDA
float centroX2 = 290;
float centroY2 = 320;

for (int i = 0; i < 6; i++) {
  float distancia = -125 + i * 50;

  obstaculos[indice] = new Obstaculo(
    centroX2 + distancia, centroY2, 0, 0
  );

  obstaculos[indice].centro = new PVector(centroX2, centroY2);
  obstaculos[indice].radio = abs(distancia);
  obstaculos[indice].angulo = distancia < 0 ? PI : 0;
  obstaculos[indice].velocidadAngular = 0.04;
  indice++;
}

// BARRA CENTRAL
float centroX3 = 450;
float centroY3 = 320;

for (int i = 0; i < 6; i++) {
  float distancia = -125 + i * 50;

  obstaculos[indice] = new Obstaculo(
    centroX3 + distancia, centroY3, 0, 0
  );

  obstaculos[indice].centro = new PVector(centroX3, centroY3);
  obstaculos[indice].radio = abs(distancia);
  obstaculos[indice].angulo = distancia < 0 ? PI : 0;
  obstaculos[indice].velocidadAngular = 0.04;
  indice++;
}

// BARRA DERECHA
float centroX = 590;
float centroY = 320;

for (int i = 0; i < 6; i++) {
  float distancia = -125 + i * 50;

  obstaculos[indice] = new Obstaculo(
    centroX + distancia, centroY, 0, 0
  );

  obstaculos[indice].centro = new PVector(centroX, centroY);
  obstaculos[indice].radio = abs(distancia);
  obstaculos[indice].angulo = distancia < 0 ? PI : 0;
  obstaculos[indice].velocidadAngular = 0.04;
  indice++;
}

    }
    // =====================================
    // NIVEL 12
    // =====================================

    else if (numero == 12) {

      float velocidad = 2.0;

      float[][] antenaIzquierda = {
        {250, 300, 100, 50},
        {200, 250, 100, 50},
        {150, 200, 100, 50}
      };

      for (int i = 0; i < antenaIzquierda.length; i++) {
        float x = antenaIzquierda[i][0];
        float y = antenaIzquierda[i][1];
        float ancho = antenaIzquierda[i][2];

        obstaculos[indice++] = new Obstaculo(
          x + 30, y + 25,
          (i % 2 == 0 ? velocidad : -velocidad), 0,
          x + 10, x + ancho - 10,
          y + 10, y + 40
        );
      }

      float[][] antenaDerecha = {
        {550, 300, 100, 50},
        {600, 250, 100, 50},
        {650, 200, 100, 50}
      };

      for (int i = 0; i < antenaDerecha.length; i++) {
        float x = antenaDerecha[i][0];
        float y = antenaDerecha[i][1];
        float ancho = antenaDerecha[i][2];

        obstaculos[indice++] = new Obstaculo(
          x + 70, y + 25,
          (i % 2 == 0 ? -velocidad : velocidad), 0,
          x + 10, x + ancho - 10,
          y + 10, y + 40
        );
      }

      for (int i = 0; i < 6; i++) {
        float x = 90 + i * 52;
        float velocidadVertical = (i % 2 == 0) ? velocidad : -velocidad;

        obstaculos[indice++] = new Obstaculo(
          x, 400, 0, velocidadVertical,
          x, x, 365, 435
        );
      }

      for (int i = 0; i < 6; i++) {
        float x = 550 + i * 52;
        float velocidadVertical = (i % 2 == 0) ? -velocidad : velocidad;

        obstaculos[indice++] = new Obstaculo(
          x, 400, 0, velocidadVertical,
          x, x, 365, 435
        );
      }
    }

    // =====================================
    // NIVEL 13
    // RECORRIDO IRREGULAR
    // =====================================

    else if (numero == 13) {

      float velocidad = 3.0;

      // SEGUNDA HABITACIÓN - VERTICALES
      for (int i = 0; i < 2; i++) {
        obstaculos[indice++] = new Obstaculo(
          370 + i * 100, 190 + i * 45,
          0, (i == 0 ? velocidad : -velocidad),
          300, 540, 170, 290
        );
      }

      // TERCERA HABITACIÓN - CIRCULARES
      for (int i = 0; i < 4; i++) {

        float angulo = i * HALF_PI;

        obstaculos[indice] = new Obstaculo(
          485, 370, 50, 0.045
        );

        obstaculos[indice].angulo = angulo;
        obstaculos[indice].posicion.x = 485 + cos(angulo) * 50;
        obstaculos[indice].posicion.y = 370 + sin(angulo) * 50;

        indice++;
      }

      // CUARTA HABITACIÓN - HORIZONTALES
      for (int i = 0; i < 2; i++) {
        obstaculos[indice++] = new Obstaculo(
          570 + i * 80, 520,
          (i == 0 ? velocidad : -velocidad), 0,
          545, 810, 510, 530
        );
      }
    }

  // =====================================
// NIVEL 14 - RECORRIDO EN FORMA DE ANILLO
// =====================================


// =====================================
// NIVEL 14 - OBSTÁCULOS
// =====================================

else if (numero == 14) {

  float velocidad = 3.5;


  // =====================================
  // HABITACIÓN IZQUIERDA - CUADRADO VERTICAL
  // =====================================

  for (int i = 0; i < 4; i++) {

    float x = 145 + (i % 2) * 30;
    float y = 260 + (i / 2) * 30;

    obstaculos[indice++] = new Obstaculo(
      x, y, 0, velocidad,
      x, x, 190, 430
    );
  }


  // =====================================
  // HABITACIÓN DERECHA - CUADRADO VERTICAL
  // =====================================

  for (int i = 0; i < 4; i++) {

    float x = 715 + (i % 2) * 30;
    float y = 260 + (i / 2) * 30;

    obstaculos[indice++] = new Obstaculo(
      x, y, 0, -velocidad,
      x, x, 190, 430
    );
  }


  // =====================================
  // HABITACIÓN SUPERIOR - IZQUIERDA
  // =====================================

  for (int i = 0; i < 4; i++) {

    float x = 260 + (i % 2) * 35;
    float y = 95 + (i / 2) * 35;

    obstaculos[indice++] = new Obstaculo(
      x, y, 0, velocidad,
      x, x, 75, 180
    );
  }


  // =====================================
  // HABITACIÓN SUPERIOR - DERECHA
  // =====================================

  for (int i = 0; i < 4; i++) {

    float x = 605 + (i % 2) * 35;
    float y = 95 + (i / 2) * 35;

    obstaculos[indice++] = new Obstaculo(
      x, y, 0, -velocidad,
      x, x, 75, 180
    );
  }


  // =====================================
  // HABITACIÓN IZQUIERDA - HORIZONTAL
  // =====================================

  for (int i = 0; i < 4; i++) {

    float x = 125 + (i % 2) * 35;
    float y = 220 + (i / 2) * 100;

    obstaculos[indice++] = new Obstaculo(
      x, y, velocidad, 0,
      110, 205, y, y
    );
  }


  
// =====================================
// HABITACIÓN DERECHA - 4 OBSTÁCULOS HORIZONTALES
// =====================================

for (int i = 0; i < 4; i++) {

  float x = 690 + (i % 2) * 35;
  float y = 220 + (i / 2) * 100;

  obstaculos[indice++] = new Obstaculo(
    x, y,
    -velocidad, 0,
    680, 790,
    y, y
  );
}



  // =====================================
  // HABITACIÓN INFERIOR - PRIMER GRUPO
  // MOVIMIENTO VERTICAL
  // =====================================

  for (int i = 0; i < 4; i++) {

    float x = 280 + (i % 2) * 40;
    float y = 465 + (i / 2) * 35;

    obstaculos[indice++] = new Obstaculo(
      x, y, 0, velocidad,
      x, x, 445, 545
    );
  }


  // =====================================
  // HABITACIÓN INFERIOR - SEGUNDO GRUPO
  // MOVIMIENTO VERTICAL
  // =====================================

  for (int i = 0; i < 4; i++) {

    float x = 580 + (i % 2) * 40;
    float y = 465 + (i / 2) * 35;

    obstaculos[indice++] = new Obstaculo(
      x, y, 0, -velocidad,
      x, x, 445, 545
    );
  }


 
// =====================================
// HABITACIÓN INFERIOR - 4 OBSTÁCULOS HORIZONTALES
// =====================================

for (int i = 0; i < 2; i++) {

  float x = 330 + i * 200;

  obstaculos[indice++] = new Obstaculo(
    x, 465, velocidad, 0,
    200, 700, 465, 465
  );
}

for (int i = 0; i < 2; i++) {

  float x = 530 - i * 200;

  obstaculos[indice++] = new Obstaculo(
    x, 525, -velocidad, 0,
    200, 700, 525, 525
  );
}


}

  
    // =====================================
    // NIVEL 15
    // DESAFÍO FINAL
    // =====================================

    else if (numero == 15) {

      float velocidad = 3.5;

      // CÍRCULO INTERIOR - 6 OBSTÁCULOS
      for (int i = 0; i < 6; i++) {

        float angulo = i * TWO_PI / 6;

        obstaculos[indice] = new Obstaculo(
          450, 325, 100, 0.045
        );

        obstaculos[indice].angulo = angulo;
        obstaculos[indice].posicion.x = 450 + cos(angulo) * 100;
        obstaculos[indice].posicion.y = 325 + sin(angulo) * 100;

        indice++;
      }

      // CÍRCULO EXTERIOR - 4 OBSTÁCULOS
      for (int i = 0; i < 4; i++) {

        float angulo = i * TWO_PI / 4;

        obstaculos[indice] = new Obstaculo(
          450, 325, 190, 0.030
        );

        obstaculos[indice].angulo = angulo;
        obstaculos[indice].posicion.x = 450 + cos(angulo) * 190;
        obstaculos[indice].posicion.y = 325 + sin(angulo) * 190;

        indice++;
      }

      // OBSTÁCULOS HORIZONTALES CENTRALES
      obstaculos[indice++] = new Obstaculo(
        450, 190, velocidad, 0,
        300, 600, 190, 190
      );

      obstaculos[indice++] = new Obstaculo(
        450, 460, -velocidad, 0,
        300, 600, 460, 460
      );

      // HABITACIÓN SUPERIOR
      for (int i = 0; i < 2; i++) {
        obstaculos[indice++] = new Obstaculo(
          420 + i * 70, 90,
          0, (i == 0 ? velocidad : -velocidad),
          385, 515, 70, 190
        );
      }

      // HABITACIÓN INFERIOR
      for (int i = 0; i < 2; i++) {
        obstaculos[indice++] = new Obstaculo(
          420 + i * 70, 535,
          0, (i == 0 ? -velocidad : velocidad),
          385, 515, 465, 575
        );
      }
    }

    return indice;
  }
}
