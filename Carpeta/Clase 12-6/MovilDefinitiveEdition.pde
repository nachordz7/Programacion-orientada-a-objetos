class Movil {
  PVector acel= new PVector(0,0);
  
  
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
    vel.add(acel);
    acel.mult(0);
    
    pos.add(vel);
    contener();
  }
  void agregarFuerza(PVector F){
    acel.add(F);
  }
  void alejar(PVector otro, float cuanto){
  PVector r = pos.copy();
  r.sub(otro);
  r.normalize();
  r.mult(cuanto);
  agregarFuerza(r);
}
  
}
PVector mxy = new PVector(0,0);

Movil m;
Movil otro;
PVector G = new PVector(0,1);
void setup() {
  size(800, 600);
  m = new Movil(width/2, height/2);
  otro = new Movil(100,300);
}

void draw() {
  background(60);
  m.agregarFuerza(G);
  otro.agregarFuerza(G);
  otro.mover();
  m.mover();
  m.mostrar();
  otro.mostrar();
  mxy.x = mouseX;
  mxy.y = mouseY;
  m.alejar(mxy,1);  
  otro.alejar(mxy,1);
}







