void setup() {
  size(800, 600);
  
}

void draw() {
  background(200);

  if (mousePressed) {
    dibujo(mouseX, mouseY, 50, 50);
  }
}

void dibujo(float posX, float posY, float ancho, float alto) {

  // Rectangulo
  rect(posX - ancho/2, posY, ancho, alto);

  // Triangulo
  triangle( );
}
