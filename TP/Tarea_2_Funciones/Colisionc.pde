/*
Contexto: En el desarrollo de videojuegos, saber si un proyectil toca a un enemigo o si el cursor del mouse está sobre un botón circular es vital. 
Para esto, no usamos cuadrados, sino la distancia matemática pura.
El Reto: Crea una función llamada hayColision que determine si un punto en el espacio está dentro del área de un círculo.
*/
float radio;
float xc, yc;
void setup() {
  size(800, 600);
  radio = random(100, 400); // declara el radio de manera random desde 100 hasta 400.
  xc = random(width);  //declara el valor de x, de manera random desde 0 hasta 600(limite de width).
  yc = random(height);  //declara el valor de y, de manera random desde 0 hasta 800(limite de height).
}

void draw() {
  if (hayColision(xc, yc, radio)) {
    fill(255, 0, 0);
  } else fill(255);
  circle(xc, yc, radio*2);
}

boolean hayColision(float x, float y, float r ) {  // X e Y son los valores random del circulo que toma de xc e yc.
  float d = dist(mouseX, mouseY, x, y);  // calcula la distancia desde el mouse(mouseX, mouseY) hasta el circulo(x,y).
  if (d > r) return false;  
  else return true;
}

