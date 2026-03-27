void setup() {
  size(800, 600);
  
}

void draw() {
 

  if (mousePressed) {
    dibujo(mouseX, mouseY, 50, 50);
  }
}

void dibujo(float posX, float posY, float ancho, float alto) {

  // Rectangulo
  rect(posX - ancho/2, posY, ancho, alto);

  // Triangulo
  triangle(
    posX - ancho/2, posY,
    posX + ancho/2, posY,
    posX, posY - alto
    );
}
