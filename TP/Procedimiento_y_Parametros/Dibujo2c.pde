void setup() {
  size(800, 600);
  
}

void draw() {
  background(200);

  if (mousePressed) {
    dibujo(mouseX, mouseY, 50, 50);
  }
}

void dibujo(float posicionX, float posicionY, float ancho, float alto) {

  // Rectangulo
  rect();

  // Triangulo
  triangle( );
}
