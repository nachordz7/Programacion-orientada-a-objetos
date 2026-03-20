void setup() {
  size(800, 600);
}

void draw() {
  if (estaTocandoelCirulo()) {
    fill(255, 0, 0); // operacion para pintar el interior del circulo.
  } else fill(255);
  circle(width/2, height/2, width/2); // valores de un Circulo | posicionX, posicionY, diamatro;
}
boolean estaTocandoelCirulo() {
  float r = width/4; // metodo para calcular el radio, otro metodo es (witdh/2)/2.
  float d = dist(mouseX, mouseY, width/2, height/2); // operacion para calcular la distancia entre dos puntos.
  if (d > r) return false;
  else return true;
}
