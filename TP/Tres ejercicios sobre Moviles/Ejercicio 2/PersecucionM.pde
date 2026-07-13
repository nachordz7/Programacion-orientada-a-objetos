MovilA ma;
MovilB mb;

void setup() {
  size(800,600);
  ma = new MovilA(width / 4, height / 2);
  mb = new MovilB(width * 0.5, height / 2);
}

void draw() {
  background(255);

  ma.mover();
  ma.mostrar();

  mb.perseguir(ma.pos);
  mb.mover();
  mb.mostrar();
}
