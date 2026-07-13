class MOVIL {
  PVector pos;
    PVector vel=new PVector(4, 3);
  float d = 40;

  MOVIL(float origenX, float origenY) {
    pos=new PVector(origenX, origenY);
  }
  void mostrar() {
    circle(pos.x, pos.y, d);
  }

  void contener() {
    if (pos.x<0 || pos.x > width) {
      vel.x=vel.x*(-1);
    }
    if (pos.y<0 || pos.y > height) {
      vel.y=vel.y*(-1);
    }
  }
  void mover() {
    pos.add(vel);
  }
}

MOVIL m;
MOVIL otro;
void setup() {
  size(800, 600);
  m= new MOVIL (width/2, height/2);
  otro = new MOVIL (100, 300);
}
void draw() {
  background(120,0,33);
  m.mover();
  otro.mover();

  m.contener();
  otro.contener();
  m.mostrar();
  otro.mostrar();
  
}
