
class Menu {

  PFont fuente;

  boolean mostrandoNiveles = false;
  boolean mostrandoLeaderboard = false;

  // PALETA RED DEAD

  color fondo = color(32, 5, 12);
  color bordes = color(125, 25, 40);
  color rojoSuave = color(85, 15, 28);
  color verde = color(100, 255, 105);
  color letras = color(245, 245, 235);


  Menu() {

    fuente = createFont("Monospaced", 32, true);

  }


  // =====================================
  // MOSTRAR MENÚ
  // =====================================

  void mostrar(Leaderboard ranking) {

    if (mostrandoNiveles) {

      mostrarNiveles();

    } else if (mostrandoLeaderboard) {

      mostrarLeaderboard(ranking);

    } else {

      mostrarMenuPrincipal();

    }

  }


  // =====================================
  // MENÚ PRINCIPAL
  // =====================================

  void mostrarMenuPrincipal() {

    background(fondo);

    textFont(fuente);

    dibujarEsquinas();

    stroke(bordes);
    strokeWeight(5);

    line(40, 145, 210, 145);
    line(690, 145, 860, 145);

    line(180, 125, 235, 125);
    line(665, 125, 720, 125);


    // TÍTULO

    textAlign(CENTER, CENTER);
    noStroke();

    fill(letras);
    textSize(75);
    text("RED DEAD", 450, 105);

    fill(verde);
    textSize(90);
    text("CUBE", 450, 235);


    // RECORRIDO DECORATIVO

    stroke(bordes);
    strokeWeight(6);

    line(135, 330, 765, 330);

    noStroke();


    // JUGADOR

    fill(255, 65, 65);
    rect(198, 295, 28, 28);


    // OBSTÁCULOS

    fill(145, 45, 60);

    rect(370, 301, 22, 22);
    rect(435, 301, 22, 22);
    rect(500, 301, 22, 22);


    // META

    fill(verde);
    rect(675, 295, 28, 28);


    // BOTÓN PLAY GAME

    dibujarBoton(
      "PLAY GAME",
      240, 355, 420, 60,
      botonJugar(),
      true
    );


    // BOTÓN NIVELES

    dibujarBoton(
      "NIVELES",
      240, 430, 420, 60,
      botonNiveles(),
      false
    );


    // BOTÓN LEADERBOARD

    dibujarBoton(
      "LEADERBOARD",
      240, 505, 420, 60,
      botonLeaderBoard(),
      false
    );


    // INSTRUCCIONES

    textAlign(CENTER, CENTER);
    textSize(15);
    fill(verde);

    text("WASD / ARROWS TO MOVE", 450, 610);

  }


  // =====================================
  // PANTALLA DE SELECCIÓN DE NIVELES
  // =====================================

  void mostrarNiveles() {

    background(fondo);

    textFont(fuente);

    dibujarEsquinas();


    // TÍTULO

    textAlign(CENTER, CENTER);
    noStroke();

    fill(letras);
    textSize(42);

    text("SELECT LEVEL", 450, 75);


    // LÍNEA DECORATIVA

    stroke(bordes);
    strokeWeight(4);

    line(170, 115, 730, 115);


    // BOTONES DE LOS 15 NIVELES

    for (int i = 1; i <= 15; i++) {

      int columna = (i - 1) % 3;
      int fila = (i - 1) / 3;

      float x = 170 + columna * 215;
      float y = 145 + fila * 78;

      boolean encima =
        mouseX >= x &&
        mouseX <= x + 150 &&
        mouseY >= y &&
        mouseY <= y + 55;

      color tono = bordes;

      if (encima) {
        fill(tono);
      } else {
        fill(fondo);
      }

      dibujarMarcoPixel(
        x, y, 150, 55, tono
      );


      if (encima) {
        fill(letras);
      } else {
        fill(verde);
      }

      textAlign(CENTER, CENTER);
      textSize(22);

      text(
        "LEVEL " + i,
        x + 75,
        y + 27
      );

    }


    // BOTÓN VOLVER

    dibujarBoton(
      "VOLVER",
      340, 555, 220, 55,
      botonVolver(),
      false
    );

  }


  // =====================================
  // PANTALLA LEADERBOARD
  // =====================================

  void mostrarLeaderboard(Leaderboard ranking) {

    background(fondo);

    textFont(fuente);

    dibujarEsquinas();

    ranking.mostrar();


    // BOTÓN VOLVER

    dibujarBoton(
      "VOLVER",
      340, 555, 220, 55,
      botonVolver(),
      false
    );

  }


  // =====================================
  // DIBUJAR BOTONES
  // =====================================

  void dibujarBoton(
    String nombre,
    float x,
    float y,
    float ancho,
    float alto,
    boolean encima,
    boolean principal
  ) {

    color tono;

    if (principal) {
      tono = verde;
    } else {
      tono = bordes;
    }

    noStroke();

    if (encima) {
      fill(tono);
    } else {
      fill(fondo);
    }

    dibujarMarcoPixel(x, y, ancho, alto, tono);


    if (encima) {
      fill(fondo);
    } else {
      fill(letras);
    }

    textAlign(CENTER, CENTER);
    textSize(25);

    text(nombre, x + ancho / 2, y + alto / 2);


    // ICONOS


    // PLAY GAME - TRIÁNGULO

    if (principal) {

      if (encima) {
        fill(fondo);
      } else {
        fill(verde);
      }

      triangle(
        x + 40, y + 16,
        x + 40, y + 44,
        x + 62, y + 30
      );

    }


    // NIVELES - BLOQUES ESCALONADOS

    else if (nombre.equals("NIVELES")) {

      if (encima) {
        fill(fondo);
      } else {
        fill(bordes);
      }

      rect(x + 36, y + 35, 10, 10);
      rect(x + 49, y + 25, 10, 20);
      rect(x + 62, y + 15, 10, 30);

    }


    // LEADERBOARD - TROFEO

    else if (nombre.equals("LEADERBOARD")) {

      if (encima) {
        fill(fondo);
      } else {
        fill(bordes);
      }

      rect(x + 40, y + 15, 25, 19);
      rect(x + 47, y + 34, 11, 6);
      rect(x + 42, y + 40, 21, 4);

      rect(x + 34, y + 17, 6, 10);
      rect(x + 65, y + 17, 6, 10);

    }

  }


  // =====================================
  // MARCO PIXELADO
  // =====================================

  void dibujarMarcoPixel(
    float x,
    float y,
    float ancho,
    float alto,
    color tono
  ) {

    stroke(tono);
    strokeWeight(5);
    noFill();

    rect(x + 12, y, ancho - 24, alto);
    rect(x, y + 12, ancho, alto - 24);

    noStroke();
    fill(tono);

    rect(x + 8, y, 15, 8);
    rect(x, y + 8, 8, 15);

    rect(x + ancho - 23, y, 15, 8);
    rect(x + ancho - 8, y + 8, 8, 15);

    rect(x + 8, y + alto - 8, 15, 8);
    rect(x, y + alto - 23, 8, 15);

    rect(x + ancho - 23, y + alto - 8, 15, 8);
    rect(x + ancho - 8, y + alto - 23, 8, 15);

  }


  // =====================================
  // DECORACIONES DE LAS ESQUINAS
  // =====================================

  void dibujarEsquinas() {

    noStroke();
    fill(bordes);

    for (int i = 0; i < 2; i++) {

      rect(15 + i * 20, 15, 12, 12);
      rect(15, 35 + i * 20, 12, 12);

      rect(855 - i * 20, 15, 12, 12);
      rect(875, 35 + i * 20, 12, 12);

      rect(15 + i * 20, 605, 12, 12);
      rect(15, 625 - i * 20, 12, 12);

      rect(855 - i * 20, 605, 12, 12);
      rect(875, 625 - i * 20, 12, 12);

    }

  }


  // =====================================
  // DETECTAR BOTONES DEL MENÚ
  // =====================================

  boolean botonJugar() {

    return mouseX >= 240 &&
           mouseX <= 660 &&
           mouseY >= 355 &&
           mouseY <= 415;

  }


  boolean botonNiveles() {

    return mouseX >= 240 &&
           mouseX <= 660 &&
           mouseY >= 430 &&
           mouseY <= 490;

  }


  boolean botonLeaderBoard() {

    return mouseX >= 240 &&
           mouseX <= 660 &&
           mouseY >= 505 &&
           mouseY <= 565;

  }


  // =====================================
  // DETECTAR NIVEL SELECCIONADO
  // =====================================

  int nivelSeleccionado() {

    for (int i = 1; i <= 15; i++) {

      int columna = (i - 1) % 3;
      int fila = (i - 1) / 3;

      float x = 170 + columna * 215;
      float y = 145 + fila * 78;

      if (
        mouseX >= x &&
        mouseX <= x + 150 &&
        mouseY >= y &&
        mouseY <= y + 55
      ) {

        return i;

      }

    }

    return 0;

  }


  // =====================================
  // DETECTAR BOTÓN VOLVER
  // =====================================

  boolean botonVolver() {

    return mouseX >= 340 &&
           mouseX <= 560 &&
           mouseY >= 555 &&
           mouseY <= 610;

  }


  // =====================================
  // CAMBIAR PANTALLA
  // =====================================

  void abrirNiveles() {

    mostrandoNiveles = true;
    mostrandoLeaderboard = false;

  }


  void abrirLeaderboard() {

    mostrandoLeaderboard = true;
    mostrandoNiveles = false;

  }


  void volverMenu() {

    mostrandoNiveles = false;
    mostrandoLeaderboard = false;

  }

}
