class Mapa {

  void mostrar() {

    background(255);

    // Zona de inicio
    fill(220);
    noStroke();
    rect(105, 220, 45, 60);

    // Zona final
    fill(220);
    rect(550, 220, 45, 60);

    // Tablero
    fill(250);
    stroke(0);
    strokeWeight(3);
    rect(150, 150, 400, 200);

    // Grilla
    stroke(225);
    strokeWeight(1);

    // Líneas verticales
    for (int i = 1; i < 10; i++) {
      line(150 + i * 40, 150,
           150 + i * 40, 350);
    }

    // Líneas horizontales
    for (int j = 1; j < 5; j++) {
      line(150, 150 + j * 40,
           550, 150 + j * 40);
    }

    // Borde del tablero, una sola vez
    stroke(0);
    strokeWeight(3);
    noFill();
    rect(150, 150, 400, 200);
  }
}
