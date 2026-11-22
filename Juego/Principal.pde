
Mapa mapa;
Jugador jugador;
Menu menu;
ConfiguradorNiveles configurador;
ConfiguradorMonedas configuradorMonedas;
Leaderboard leaderboard;

Obstaculo[] obstaculos = new Obstaculo[200];
Moneda[] monedas = new Moneda[20];

int indiceObstaculo = 0;
int cantidadMonedas = 0;

boolean jugando = false;
boolean nivelCompletado = false;

boolean ingresandoNombre = false;
boolean partidaCompleta = false;

String nombreJugador = "";

int tiempoInicio;
int tiempoFinal = 0;
int momentoNivelCompletado;

int muertes = 0;


// =====================================
// CONFIGURACIÓN INICIAL
// =====================================

void setup() {

  size(900, 650);

  menu = new Menu();
  mapa = new Mapa(1);

  jugador = new Jugador(50, 80);

  configurador = new ConfiguradorNiveles();
  configuradorMonedas = new ConfiguradorMonedas();

  leaderboard = new Leaderboard();

  configurarObstaculos();
  configurarMonedas();

}


// =====================================
// DIBUJAR JUEGO
// =====================================

void draw() {

  fondoRGB();

  // PANTALLA PARA INGRESAR NOMBRE

  if (ingresandoNombre) {

    mostrarIngresoNombre();

  }

  // MENÚ

  else if (!jugando) {

    menu.mostrar(leaderboard);

  }

  // JUEGO

  else {

    mapa.mostrar();

    if (!nivelCompletado) {

      jugador.mover(mapa);


      // ACTUALIZAR OBSTÁCULOS

      for (int i = 0; i < obstaculos.length; i++) {

        if (obstaculos[i] != null) {
          obstaculos[i].mover();
        }

      }


      // MOSTRAR OBSTÁCULOS

      for (int i = 0; i < obstaculos.length; i++) {

        if (obstaculos[i] != null) {
          obstaculos[i].mostrar();
        }

      }


      // MOSTRAR Y RECOLECTAR MONEDAS

      for (int i = 0; i < cantidadMonedas; i++) {

        if (monedas[i] != null) {

          monedas[i].mostrar();
          monedas[i].tocar(jugador);

        }

      }


      // DETECTAR COLISIONES

      boolean huboColision = false;

      for (int i = 0; i < obstaculos.length; i++) {

        if (obstaculos[i] != null &&
            obstaculos[i].colisiona(jugador)) {

          huboColision = true;
          break;

        }

      }


      // REINICIAR JUGADOR Y MONEDAS

      if (huboColision) {

        muertes++;

        jugador.reiniciar(
          mapa.inicioX,
          mapa.inicioY
        );

        configurarMonedas();

      }

    }


    jugador.mostrar();


    // DETECTAR LLEGADA A LA META

    if (!nivelCompletado &&
        mapa.llegoMeta(jugador) &&
        todasLasMonedasRecolectadas()) {

      nivelCompletado = true;
      momentoNivelCompletado = millis();

      // GUARDAR TIEMPO AL COMPLETAR EL NIVEL 1

      if (mapa.numero == 1 && partidaCompleta) {

        tiempoFinal = (millis() - tiempoInicio) / 1000;

      }

    }


    mostrarEstadisticas();


    // =====================================
    // AVANZAR O FINALIZAR NIVEL
    // =====================================

    if (nivelCompletado) {

      textAlign(CENTER, CENTER);
      fill(0);
      textSize(25);


      // =====================================
      // FINAL DEL NIVEL 1
      // =====================================

      if (mapa.numero == 1 && partidaCompleta) {

        text(
          "¡Nivel 1 completado!",
          width / 2,
          height / 2 - 20
        );

        textSize(17);

        text(
          "Preparando resultado...",
          width / 2,
          height / 2 + 20
        );


        if (millis() - momentoNivelCompletado >= 2500) {

          jugando = false;
          nivelCompletado = false;

          ingresandoNombre = true;
          nombreJugador = "";

        }

      }


      // =====================================
      // AVANZAR NIVELES 2 AL 14
      // =====================================

      else if (mapa.numero < 15) {

        text(
          "¡Nivel completado!",
          width / 2,
          height / 2 - 20
        );

        textSize(17);

        text(
          "Preparando siguiente nivel...",
          width / 2,
          height / 2 + 20
        );


        if (millis() - momentoNivelCompletado >= 900) {

          mapa.numero++;
          cargarNivel();

        }

      }


      // =====================================
      // FINAL DEL NIVEL 15
      // =====================================

      else {

        text(
          "¡Completaste todos los niveles!",
          width / 2,
          height / 2 - 20
        );

        textSize(17);

        text(
          "¡Felicitaciones!",
          width / 2,
          height / 2 + 20
        );


        if (millis() - momentoNivelCompletado >= 2500) {

          jugando = false;
          mapa.numero = 1;
          nivelCompletado = false;

          menu.volverMenu();

        }

      }

    }

  }

}


// =====================================
// PANTALLA PARA INGRESAR NOMBRE
// =====================================

void mostrarIngresoNombre() {

  background(32, 5, 12);

  fill(245, 245, 235);
  textAlign(CENTER, CENTER);
  textSize(42);

  text("¡COMPLETASTE EL NIVEL 1!", 450, 160);


  fill(100, 255, 105);
  textSize(25);

  text(
    "TIEMPO: " + leaderboard.formatoTiempo(tiempoFinal),
    450,
    230
  );


  fill(245, 245, 235);
  textSize(20);

  text("INGRESÁ TU NOMBRE", 450, 310);


  stroke(125, 25, 40);
  strokeWeight(3);
  noFill();

  rect(275, 345, 350, 55);


  fill(100, 255, 105);
  textSize(25);

  String nombreVisible = nombreJugador;

  if (frameCount % 60 < 30) {
    nombreVisible += "_";
  }

  text(nombreVisible, 450, 372);


  fill(245, 245, 235);
  textSize(15);

  text(
    "ESCRIBÍ TU NOMBRE Y PRESIONÁ ENTER",
    450,
    455
  );

}


// =====================================
// CONFIGURAR OBSTÁCULOS
// =====================================

void configurarObstaculos() {

  indiceObstaculo = configurador.configurar(
    mapa.numero,
    obstaculos
  );

}


// =====================================
// CONFIGURAR MONEDAS
// =====================================

void configurarMonedas() {

  cantidadMonedas = configuradorMonedas.configurar(
    mapa.numero,
    monedas
  );

}


// =====================================
// COMPROBAR SI SE RECOLECTARON TODAS
// =====================================

boolean todasLasMonedasRecolectadas() {

  for (int i = 0; i < cantidadMonedas; i++) {

    if (monedas[i] != null && !monedas[i].recogida) {
      return false;
    }

  }

  return true;

}


// =====================================
// AGREGAR OBSTÁCULO FIJO
// =====================================

void agregarFijo(float x, float y) {

  if (indiceObstaculo < obstaculos.length) {

    obstaculos[indiceObstaculo] =
      new Obstaculo(x, y, true);

    indiceObstaculo++;

  }

}


// =====================================
// MOSTRAR ESTADÍSTICAS
// =====================================

void mostrarEstadisticas() {

  int tiempo = (millis() - tiempoInicio) / 1000;

  fill(100, 255, 105);
  textAlign(LEFT, TOP);
  textSize(18);

  text("TIEMPO: " + tiempo + "s", 20, 15);
  text("MUERTES: " + muertes, 20, 40);

  textAlign(RIGHT, TOP);
  text("NIVEL: " + mapa.numero, 880, 15);

}


// =====================================
// CARGAR NIVEL
// =====================================

void cargarNivel() {

  mapa.cargarNivel(mapa.numero);

  jugador.reiniciar(
    mapa.inicioX,
    mapa.inicioY
  );

  configurarObstaculos();
  configurarMonedas();

  nivelCompletado = false;
  momentoNivelCompletado = 0;

}


// =====================================
// FONDO
// =====================================

void fondoRGB() {

  background(45, 45, 45);

}


// =====================================
// INICIAR JUEGO
// =====================================

void iniciarJuego(int numeroNivel) {

  mapa.numero = numeroNivel;

  muertes = 0;
  tiempoFinal = 0;

  partidaCompleta = (numeroNivel == 1);

  cargarNivel();

  menu.volverMenu();

  jugando = true;

  tiempoInicio = millis();

}


// =====================================
// CLICS DEL MENÚ
// =====================================

void mousePressed() {

  // MENÚ PRINCIPAL

  if (!jugando &&
      !ingresandoNombre &&
      !menu.mostrandoNiveles &&
      !menu.mostrandoLeaderboard) {

    if (menu.botonJugar()) {

      iniciarJuego(1);

    } else if (menu.botonNiveles()) {

      menu.abrirNiveles();

    } else if (menu.botonLeaderBoard()) {

      menu.abrirLeaderboard();

    }

  }


  // PANTALLAS SECUNDARIAS

  else if (!jugando &&
           !ingresandoNombre &&
           (menu.mostrandoNiveles ||
            menu.mostrandoLeaderboard)) {

    if (menu.botonVolver()) {

      menu.volverMenu();

    } else if (menu.mostrandoNiveles) {

      int nivelElegido = menu.nivelSeleccionado();

      if (nivelElegido >= 1 && nivelElegido <= 15) {

        iniciarJuego(nivelElegido);

      }

    }

  }

}


// =====================================
// CONTROLES
// =====================================

void keyPressed() {

  // INGRESAR NOMBRE PARA EL RANKING

  if (ingresandoNombre) {

    if (keyCode == ENTER || keyCode == RETURN) {

      leaderboard.agregar(
        nombreJugador,
        tiempoFinal,
        muertes
      );

      ingresandoNombre = false;
      menu.volverMenu();

    }


    else if (keyCode == BACKSPACE) {

      if (nombreJugador.length() > 0) {

        nombreJugador = nombreJugador.substring(
          0,
          nombreJugador.length() - 1
        );

      }

    }


    else if (key != CODED &&
             nombreJugador.length() < 12 &&
             key != ENTER &&
             key != RETURN) {

      if (Character.isLetterOrDigit(key) || key == ' ') {

        nombreJugador += Character.toUpperCase(key);

      }

    }

    return;

  }


  // MOVIMIENTO DEL JUGADOR

  if (jugando && !nivelCompletado) {

    jugador.teclaPresionada();

  }

}


void keyReleased() {

  if (jugando && !ingresandoNombre) {

    jugador.teclaSoltada();

  }

}
