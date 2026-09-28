Menu menu;
Mapa mapa;
Jugador jugador;

boolean jugando = false;
int tiempoInicio;

void setup() {
  size(700, 500);

  menu = new Menu();
  mapa = new Mapa();
  jugador = new Jugador(155, 245);
}

void draw() {
  background(255);

  if (!jugando) {
    menu.mostrar();
  } else {
    mapa.mostrar();
    jugador.mover();
    jugador.mostrar();

    // Contador de tiempo
    fill(0);
    textAlign(LEFT, TOP);
    textSize(18);

    int tiempo = (millis() - tiempoInicio) / 1000;
    text("Tiempo: " + tiempo + " s", 15, 15);
  }
}

void mousePressed() {
  if (!jugando && menu.botonJugar()) {
    jugando = true;
    tiempoInicio = millis();
  }
}

void keyPressed() {
  jugador.teclaPresionada();
}

void keyReleased() {
  jugador.teclaSoltada();
}
