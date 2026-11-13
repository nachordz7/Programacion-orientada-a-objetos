
Menu menu;
Mapa mapa;
Jugador jugador;
Nivel nivel;

boolean jugando = false;
boolean nivelCompletado = false;

int tiempoInicio;
int muertes = 0;

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


    fill(0);
    textAlign(LEFT, TOP);
    textSize(18);

    int tiempo = (millis() - tiempoInicio) / 1000;

    text("Tiempo: " + tiempo + "s", 20, 15);
    text("Muertes: " + muertes, 20, 40);


    if (nivelCompletado) {

      textAlign(CENTER, CENTER);
      textSize(25);

      fill(0);
      text("¡Nivel completado!", width / 2, height / 2 - 20);

      textSize(17);

      if (nivel.numero < 15) {
        text("Presioná ENTER para continuar", width / 2, height / 2 + 20);
      } else {
        text("¡Completaste todos los niveles!", width / 2, height / 2 + 20);
        text("Presioná ENTER para volver al menú", width / 2, height / 2 + 50);
      }

    }

  }

}


void cargarNivel() {

  mapa.cargarNivel(nivel.numero);

  jugador.reiniciar(mapa.inicioX, mapa.inicioY);

  nivelCompletado = false;

}


void fondoRGB() {

  colorFondo += velocidadColor;

  if (colorFondo > 255 || colorFondo < 0) {
    velocidadColor *= -1;
  }

  background(color(colorFondo, 120, 200));

}


void mousePressed() {

  if (!jugando && menu.botonJugar()) {

    nivel.numero = 1;
    muertes = 0;

    cargarNivel();

    jugando = true;
    tiempoInicio = millis();

  }

}


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
