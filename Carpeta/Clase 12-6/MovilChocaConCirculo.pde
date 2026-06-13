class Movil {
  PVector acel= new PVector(0, 0);
  PVector pos;
  PVector vel = new PVector(4, 3);
  float d=40;

  Movil(float origenX, float origenY) {
    pos= new PVector(origenX, origenY);
  }
  void mostrar() {
    fill(25);
    circle(pos.x, pos.y, d);
  }
  void contener() {
    if (pos.x<0 || pos.x > width) {
      vel.x = vel.x * (-1);
    }
    if (pos.y < 0 || pos.y > height) {
      vel.y = vel.y * (-1);
    }
  }
  void mover() {
    vel.add(acel);
    acel.mult(0);

    pos.add(vel);
    contener();
  }
  void agregarFuerza(PVector F) {
    acel.add(F);
  }
  boolean chocaConCirculo(PVector otraPos, float otroR) {
    float d = dist (pos.x, pos.y, otraPos.x, otraPos.y);
    float r = width/4;
    if (d<(r+otroR)) {
      return true;
    } else return false;
  }
}

Movil m;
Movil otro;
PVector G = new PVector(0, 1);
void setup() {
  size(800, 600);
  m = new Movil(width/2, height/2);
  otro = new Movil(100, 300);
}

void draw() {
  background(230);
  m.agregarFuerza(G);
  otro.agregarFuerza(G);
  otro.mover();
  m.mover();
  m.mostrar();
  otro.mostrar();
  otro.chocaConCirculo();
}
