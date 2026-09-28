class Menu {

  void mostrar() {
    background(255);

    textAlign(CENTER, CENTER);

    fill(40);
    textSize(48);
    text("EL JUEGO DIFICL", width / 2, 130);

    fill(80);
    rect(290, 225, 120, 42);

    fill(255);
    textSize(19);
    text("JUGAR", width / 2, 246);
  }

  boolean botonJugar() {
    return mouseX >= 290 && mouseX <= 410 &&
           mouseY >= 225 && mouseY <= 267;
  }
}
