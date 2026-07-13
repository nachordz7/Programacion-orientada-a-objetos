/*
Ejercicio 2: Una Grilla de Estacionamiento (Array 2D / Matriz)Inicializar objetos en coordenadas X e Y
Imagina un estacionamiento pequeño de n filas y m columnas (un total de 6 lugares). Queremos crear un coche virtual (Movil) para cada lugar y que cada uno sepa exactamente en qué fila y columna nació.
Enunciado:
Modifica o crea en la clase Movil  un contructor para que ahora maneje (minimo)dos variables: int fila e int columna. Este contructor necesita algun dato más?
Un constructor que reciba ambos datos: Movil(int f, int c)     (esos dos datos como minimo)
En el programa principal, haz lo siguiente:Declarar e inicializar un array de 2 dimensiones (matriz)  lleno de objetos Movil.En el void setup(), utiliza dos bucles for anidados (uno para las filas y otro para las columnas)
*/
class Movil {

  int fila;
  int columna;

  PVector pos, vel;

  int r = 40;

  Movil(int f, int c) {

    fila = f;
    columna = c;

    pos = new PVector(100 + c * 100, 100 + f * 100);
    vel = new PVector(random(-4, 4), random(-4, 4));
  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width) {
      pos.sub(vel);
      vel.x *= -1;
    }

    if (pos.y < 0 || pos.y > height) {
      pos.sub(vel);
      vel.y *= -1;
    }
  }
}

Movil[][] est;

int filas = 4;
int columnas = 5;

void setup() {

  size(800, 600);

  est = new Movil[filas][columnas];

  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      est[f][c] = new Movil(f, c);
    }
  }
}

void draw() {

  background(255);

  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      est[f][c].mover();
      est[f][c].mostrar();
    }
  }
}
