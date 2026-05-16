class MOVIL {
  Pvector pos
    Pvector vel=new Pvector(4, 3);
  float d = 40;

  MOVIL(float origenX, float origenY) {
    pos=new Pvector(origenX, origenY);
  }
  void mostrar() {
    circle(pos.x, pos.y, d);
  }

  void contener() {
    if (pos.x<0 || pos.x > width) {
      vel.x=vel.x*(-1)
    }
    if (pos.y<0 || pos.y > height) {
      vel.y=vel.y*(-1)
    }
  }
  void mover() {
    pos.add(vel)
  }
}

MOVIL m;
MOVIL otro;
void setup() {
  size(600, 800);
  m= new MOVIL (width/2, height/2);
  otro = new MOVIL (100, 300);
}
void draw() {
  m.mover();
  otro.mover();

  m.mostrar();
  otro.mostrar();
}
