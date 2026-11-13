
class Menu {

  PFont fuente;

  Menu() {
    fuente = createFont("Monospaced", 32, true);
  }


  void mostrar() {

    background(5, 12, 30);

    textFont(fuente);

    dibujarEsquinas();

    // Líneas decorativas del título
    stroke(55, 170, 245);
    strokeWeight(5);

    line(40, 145, 210, 145);
    line(690, 145, 860, 145);

    line(180, 125, 235, 125);
    line(665, 125, 720, 125);


    // Título
    textAlign(CENTER, CENTER);
    noStroke();

    fill(245, 245, 235);
    textSize(75);
    text("THE LAST", 450, 105);

    fill(100, 255, 105);
    textSize(90);
    text("DANCE", 450, 235);


    // Recorrido decorativo
    stroke(55, 145, 220);
    strokeWeight(6);
    line(135, 330, 765, 330);

    // Jugador
    noStroke();
    fill(255, 65, 65);
    rect(198, 295, 28, 28);

    // Obstáculos
    fill(70, 175, 255);
    rect(370, 301, 22, 22);
    rect(435, 301, 22, 22);
    rect(500, 301, 22, 22);

    // Meta
    fill(100, 255, 105);
    rect(675, 295, 28, 28);


    // Botones
    dibujarBoton(
      "PLAY GAME",
      240, 365, 420, 65,
      botonJugar(),
      true
    );

    dibujarBoton(
      "LEADERBOARD",
      240, 445, 420, 65,
      botonLeaderBoard(),
      false
    );


    // Instrucciones
    textAlign(CENTER, CENTER);
    textSize(17);
    fill(65, 115, 175);
    text("WASD / ARROWS TO MOVE", 450, 570);


    stroke(40, 100, 165);
    strokeWeight(4);

    line(180, 570, 290, 570);
    line(610, 570, 720, 570);

  }


  // DIBUJAR BOTONES
  void dibujarBoton(String nombre, float x, float y,
                    float ancho, float alto,
                    boolean encima, boolean principal) {

    color tono;

    if (principal) {
      tono = color(100, 255, 105);
    } else {
      tono = color(55, 175, 255);
    }

    noStroke();

    if (encima) {
      fill(tono);
    } else {
      fill(5, 12, 30);
    }

    dibujarMarcoPixel(x, y, ancho, alto, tono);

    if (encima) {
      fill(5, 12, 30);
    } else {
      fill(245, 245, 235);
    }

    textAlign(CENTER, CENTER);
    textSize(30);
    text(nombre, x + ancho / 2, y + alto / 2);


    // Icono
    if (principal) {

      if (encima) {
        fill(5, 12, 30);
      } else {
        fill(100, 255, 105);
      }

      triangle(
        x + 40, y + 19,
        x + 40, y + 46,
        x + 62, y + 32
      );

    } else {

      if (encima) {
        fill(5, 12, 30);
      } else {
        fill(55, 175, 255);
      }

      rect(x + 40, y + 20, 25, 19);
      rect(x + 47, y + 39, 11, 6);
      rect(x + 42, y + 45, 21, 4);

      rect(x + 34, y + 22, 6, 10);
      rect(x + 65, y + 22, 6, 10);

    }

  }


  // MARCO PIXELADO
  void dibujarMarcoPixel(float x, float y,
                         float ancho, float alto, color tono) {

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


  // DECORACIONES DE LAS ESQUINAS
  void dibujarEsquinas() {

    noStroke();
    fill(45, 115, 185);

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


  // BOTÓN JUGAR
  boolean botonJugar() {

    return mouseX >= 240 &&
           mouseX <= 660 &&
           mouseY >= 365 &&
           mouseY <= 430;

  }


  // BOTÓN LEADERBOARD
  boolean botonLeaderBoard() {

    return mouseX >= 240 &&
           mouseX <= 660 &&
           mouseY >= 445 &&
           mouseY <= 510;

  }

}
