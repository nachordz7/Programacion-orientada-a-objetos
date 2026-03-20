/*
Ejercicio integrador.
 Como ejercicio de aplicación, se propone realizar una composición (dibujo) simple utilizando figuras básicas —por ejemplo círculos, rectángulos o líneas ubicadas mediante posiciones relativas dentro del canvas.
 El objetivo es que la organización visual de la composición se mantenga aunque se modifique el tamaño definido en size().
 */
int xprev = 0;
int yprev = 0;

void setup() {
  size(800, 600);
  background(180, 120, 120);
}

void draw() {
  circuloCentrado();
  rectangulo();
  trazoLinea();
  lineaContinua();
}

void circuloCentrado() {
  int cx = width/2;
  int cy = height/2;
  circle(cx, cy, width/16); //Un circulo en el centro.
}

void rectangulo() {
  rect(width/4, height/4, width/8, height/12); //Un rectangulo con posicion relativa.
}

void trazoLinea() {
  line(0,0,width,height);  //Una linea con posicion relativa
}

void lineaContinua() {
  if (mousePressed) {
    line(mouseX, mouseY, xprev, yprev); // Un trazo de linea continua
  }
  xprev = mouseX;
  yprev = mouseY;
}
