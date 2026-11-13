
Menu menu;
Mapa mapa;
Jugador jugador;
Nivel nivel;

boolean jugando = false;
boolean nivelCompletado = false;

int tiempoInicio;
int muertes = 0;

// Fondo RGB
float colorFondo = 0;
float velocidadColor = 0.15;


void setup() {

  size(900, 650);

  menu = new Menu();
  mapa = new Mapa();
  nivel = new Nivel(1);

  jugador = new Jugador(50, 80);

}


void draw() {

  fondoRGB();

  if (!jugando) {

    menu.mostrar();

  } else {

    mapa.mostrar();
    nivel.mostrar();

    if (!nivelCompletado) {
      jugador.mover(mapa);
    }

    jugador.mostrar();

    if (!nivelCompletado && mapa.llegoMeta(jugador)) {
      nivelCompletado = true;
    }

    mostrarEstadisticas();

    if (nivelCompletado) {

      textAlign(CENTER, CENTER);
      fill(0);

      textSize(25);
      text("¡Nivel completado!", width / 2, height / 2 - 20);

      textSize(17);

      if (nivel.numero < 15) {

        text("Presioná ENTER para continuar",
          width / 2, height / 2 + 20);

      } else {

        text("¡Completaste todos los niveles!",
          width / 2, height / 2 + 20);

        text("Presioná ENTER para volver al menú",
          width / 2, height / 2 + 50);

      }

    }

  }

}


// ESTADÍSTICAS
void mostrarEstadisticas() {

  int tiempo = (millis() - tiempoInicio) / 1000;

  fill(0);
  textAlign(LEFT, TOP);
  textSize(18);

  text("Tiempo: " + tiempo + "s", 20, 15);
  text("Muertes: " + muertes, 20, 40);

}


// CARGAR NIVEL
void cargarNivel() {

  mapa.cargarNivel(nivel.numero);

  jugador.reiniciar(mapa.inicioX, mapa.inicioY);

  nivelCompletado = false;

}


// FONDO RGB VERTICAL
void fondoRGB() {

  colorFondo += velocidadColor;

  if (colorFondo >= 360) {
    colorFondo = 0;
  }

  colorMode(HSB, 360, 100, 100);

  color color1 = color(colorFondo, 55, 90);
  color color2 = color((colorFondo + 35) % 360, 55, 75);

  noFill();

  for (int y = 0; y < height; y++) {

    float proporcion = y / (float) height;

    stroke(lerpColor(color1, color2, proporcion));
    line(0, y, width, y);

  }

  colorMode(RGB, 255);

}


// INICIAR JUEGO
void mousePressed() {

  if (!jugando && menu.botonJugar()) {

    nivel.numero = 1;
    muertes = 0;

    cargarNivel();

    jugando = true;
    tiempoInicio = millis();

  }

}


// CAMBIAR NIVEL
void keyPressed() {

  if (nivelCompletado && keyCode == ENTER) {

    if (nivel.numero >= 15) {

      jugando = false;
      nivel.numero = 1;

      return;

    }

    nivel.numero++;

    cargarNivel();

    return;

  }

  jugador.teclaPresionada();

}


void keyReleased() {

  jugador.teclaSoltada();

}
