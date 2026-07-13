Movil m;
PVector G = new PVector(0, 0.2); 
PVector MXY = new PVector(0, 0);

void setup() {
  size(800,600);
  m = new Movil(width / 2, height / 2);
}

void draw() {
  background(255); 

  m.agregarFuerza(G);

  MXY.x = mouseX;
  MXY.y = mouseY;
  m.alejar(MXY, 1.5); 

  m.mover();
  m.mostrar();
}
