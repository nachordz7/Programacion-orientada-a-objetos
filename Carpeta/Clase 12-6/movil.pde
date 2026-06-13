class Movil {
  PVector pos;
  PVector vel = new PVector(4,3);
  float d=40;

  Movil(float origenX, float origenY) {
    pos= new PVector(origenX, origenY);
  }
  void mostrar() {
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
    pos.add(vel);
  }
}
Movil m;
void setup() {
  size(800, 600);
  m = new Movil(width/2, height/2);
}

void draw() {
  background(60);
  m.mover();
  m.mostrar();
  m.contener();
}







